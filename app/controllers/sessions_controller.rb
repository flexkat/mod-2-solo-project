class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else 
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to salons_path
  end 
end
