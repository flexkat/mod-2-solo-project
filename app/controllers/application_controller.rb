class ApplicationController < ActionController::Base
  before_action :current_user
  helper_method :logged_in?
  helper_method :log_out
  helper_method :current_user

  def current_user
    if session[:user_id]
      @user = @user || User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def log_out
    session.delete(:user_id)
    @user = nil
  end

end
