class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to categories_path
  	else
  		flash[:alert] = "Something went wrong. make sure you filled in all fields correctly."
  		redirect_to new_session_path
  	end
  end

  def destroy
  	session.clear
  	session[:user_id] = nil
  	redirect_to categories_path
  end
end
