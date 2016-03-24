class CommentsController < ApplicationController
  

  def create
  	p params
  	@ticket = Ticket.find(params[:ticket_id])
  	@comment = @ticket.comments.create(comment_params)
  	# partial later
  	redirect /
  end

  def show
  	@ticket = Ticket.find(params[:ticket_id])
  	#partial later
  end

  private
  	def comment_params
  		params.require(:comment).permit(:body)
  	end

end
