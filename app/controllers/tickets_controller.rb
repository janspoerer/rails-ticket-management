class TicketsController < ApplicationController
  include Pundit
  after_action :verify_authorized
  after_action :verify_policy_scoped, only: [new]

  def new
    # New
    @ticket = Ticket.new
    authorize @ticket
    @ticket.user = current_user

    # Index
    @open_tickets = policy_scope(Ticket).where(status: "open")
    authorize @open_tickets

    @past_tickets = policy_scope(Ticket).where(status: "closed")
    authorize @past_tickets

    @closed_by_user_tickets = policy_scope(Ticket).where(status: "closed by user")
    authorize @closed_by_user_tickets

    # Comments and new comment
    @comment = Comment.new
    authorize @comment
  end

  def create
    @ticket = Ticket.new(ticket_params)
    authorize @ticket

    @ticket.user = @current_user

    if @current_user.company.present?
      @ticket.company = @current_user.company.name
      if @ticket.save
        redirect_to new_ticket_path, notice: "Success. We will process your ticket within 24 hours. Ticket ID: #{@ticket.id}"
      else
        render :new
      end
    else
      redirect_to new_ticket_path, alert: "Your account is not yet associated with a company. Please ask your coworkers if they already set up a company account or contact us directly to create a company account for you: jan.spoerer@whu.edu"
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    authorize @ticket

    @comment = Comment.new

    @comments = @ticket.comments
  end

  private

  def ticket_params
    params[:ticket].permit(:title, :description, :max_time, :type_of_issue, :satisfaction)
  end

  def skip_pundit?
    false
  end
end
