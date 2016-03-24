
class TicketsController < ApplicationController
  def index
  	@ticket = Ticket.all
  end

  def show
  	@ticket = Ticket.find(params[:id])

  	@comment = Comment.new
  	@comments = @ticket.comments.order(created_at: :asc)
  


  end 

  def create
  	@category = Category.find(params[:category_id])
  	@user = current_user
  	@ticket = Ticket.create(ticket_params)
  end

  def edit
  end

  private
  def ticket_params
    params.require(:ticket).permit(:issue, :description, :level, :housing_project, :building, :other_details, :image, :status, :user, :category).merge(user_id: current_user.id)
  end
end
