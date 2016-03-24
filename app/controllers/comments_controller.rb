class CommentsController < ApplicationController
  

  def create
  	current_user
  	@ticket = Ticket.find(params[:ticket_id])
  	@comment = Comment.new(comment_params)
  	@comment.user = current_user
  	@ticket.comments << @comment
  	# @comment = @ticket.comments.new(comment_params)
  	if @comment.save
  	# partial later
  		redirect_to :back
  	else
  		hi what are you doing
  	end
  end

  def show
  	@ticket = Ticket.find(params[:ticket_id])
  	#partial later
  	render 'ticket/show'
  end

  private
  	def comment_params
  		params.require(:comment).permit(:user, :body)
  	end

end
