class TicketsController < ApplicationController
  include Pundit
  after_action :verify_authorized
  #after_action :verify_policy_scoped

  def new
    @ticket = Ticket.new(user: current_user)
    authorize @ticket
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    authorize @ticket

    if @ticket.save!
      redirect_to tickets_path(@ticket)
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
