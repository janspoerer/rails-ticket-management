class TicketsController < ApplicationController
  include Pundit
  after_action :verify_authorized
  after_action :verify_policy_scoped, only: [new]

  def new
    @ticket = Ticket.new(user: current_user)
    authorize @ticket

    @open_tickets = policy_scope(Ticket).where(status: "open")
    authorize @open_tickets

    @past_tickets = policy_scope(Ticket).where(status: "closed")
    authorize @past_tickets

    @closed_by_user_tickets = policy_scope(Ticket).where(status: "closed by user")
    authorize @closed_by_user_tickets
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    authorize @ticket

    if @ticket.save!

      redirect_to new_ticket_path(@ticket), notice: "Success. We will process your ticket within 24 hours. Ticket ID: #{@ticket.id}"
    else
      render :new
    end
  end

  private

  def ticket_params
    params[:ticket].permit(:title, :description, :max_time, :type_of_issue, :satisfaction)
  end

  def skip_pundit?
    false
  end
end
