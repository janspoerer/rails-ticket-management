class TicketsController < ApplicationController
  include Pundit
  after_action :verify_authorized
  after_action :verify_policy_scoped, only: [:new, :create, :cancel]

  def new
    @ticket = Ticket.new
    @ticket.user = current_user
    authorize @ticket

    load_tickets

    @comment = Comment.new
    authorize @comment
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    authorize @ticket

    load_tickets

    if @current_user.company.present?
      @ticket.company = @current_user.company.name
      if @ticket.save
        redirect_to new_ticket_path, notice: t("successfully_created", ticket_id = @ticket.id)
      else
        render :new, alert: "Please make sure to enter a description and a maximum time."
      end
    else
      redirect_to new_ticket_path, alert: "Your account is not yet associated with a company. Please ask your coworkers if they already set up a company account or contact us directly to create a company account for you: jan@spoerer.me"
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    authorize @ticket

    @comment = Comment.new

    @comments = @ticket.comments
  end

  def close
    @ticket = Ticket.find(params[:id])
    authorize @ticket

    # Update action will here only allow for closing the ticket.
    ticket_params_update_here = ticket_params_update
    ticket_params_update_here.status = "closed by user"

    @ticket.update(ticket_params_update_here)

    @comment = Comment.new
    @comment.content = t("user_close_ticket", user = current_user, time = Time.now.strftime("%d/%m/%Y %H:%M"))

    if @comment.save
      redirect_to ticket_path(@ticket), notice: t("successfully_closed_ticket", ticket_id = @ticket.id)
    else
      render :new, alert: "There was an error."
    end
  end

  private

  def load_tickets
    @open_tickets = policy_scope(Ticket).where(status: "open")
    authorize @open_tickets

    @past_tickets = policy_scope(Ticket).where(status: "closed")
    authorize @past_tickets

    @closed_by_user_tickets = policy_scope(Ticket).where(status: "closed by user")
    authorize @closed_by_user_tickets
  end

  def ticket_params
    params[:ticket].permit(:title, :description, :max_time, :type_of_issue, :satisfaction, :user)
  end

  def skip_pundit?
    false
  end
end
