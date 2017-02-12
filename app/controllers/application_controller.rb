class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # avaialble to all controllers

  #avaialble to views!
  helper_method :current_user, :logged_in?

  def current_user
    # dont' hit DB everytime. if current_user return user the user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # true if there is current user, false if there isn't current user
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must logged in to performa that action"
      redirect_to root_path
    end
  end


end
