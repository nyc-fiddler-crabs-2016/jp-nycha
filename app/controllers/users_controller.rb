class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	    @user = User.new(user_params)
    if @user.save
      redirect_to categories_path
    else
      alert.now[:bad_registration] = "Bad registration"
    end
  end

  private 

  def user_params
  	params.require(:user).permit(:email, :password)
  end
end
