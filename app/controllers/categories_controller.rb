class CategoriesController < ApplicationController
   def show
  	@category = Category.find(params[:id])
  	@categories = Category.all
  	@tickets = @category.tickets
  	@ticket = Ticket.new
  end

  def index
  	@categories = Category.all
  end


end
