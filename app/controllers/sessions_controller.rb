class SessionsController < ApplicationController


   # before_action :require_none, only: [:new]


def welcome
  end

  def new
  end
  
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/login'
    end
  end

  def destroy

# User.find(session[:user_id]).destroy    

    session.clear
    redirect_to  '/login'


    # log_out if logged_in?
    # redirect_to root_path


  end



end
