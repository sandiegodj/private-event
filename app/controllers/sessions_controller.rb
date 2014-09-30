class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:name => params[:name])
    if user
      session[:user_id] = user.id
      flash[:success] = "Sign in successful"
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Log out successful"
    redirect_to root_url
  end
end

