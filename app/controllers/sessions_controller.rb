class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      flash[:success] = "you have successfully logged in"
      redirect_to user_path(user)
    else
      flash.now[:danger] = "there was something wrong with your login informations"
      render 'new'
    end
  end

  def destory
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end


end
