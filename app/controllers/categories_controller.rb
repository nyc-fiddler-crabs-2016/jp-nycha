class CategoriesController < ApplicationController
    def show
  	@category = Category.find(params[:id])
  	@tickets = @category.tickets
  	@ticket = Ticket.new
  end

  def index
  	@categories = Category.all
  end


end
