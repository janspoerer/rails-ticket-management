class CommentsController < ApplicationController
  include Pundit
  after_action :verify_authorized

  def create
    @comment = Comment.new(comment_params)
    @ticket = Ticket.find(params[:ticket_id])
    @comment.ticket = @ticket

    authorize @comment

    if @comment.save
      redirect_to ticket_path(@ticket), notice: "Comment added to ticket #{@ticket.id}"
    else
      render :new
    end
  end

  private

  def comment_params
    params[:comment].permit(:content)
  end
end
