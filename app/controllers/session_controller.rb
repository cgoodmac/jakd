class SessionController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:username] = user.username
      session[:id] = user[:id]
      user.set_login(true)
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    @auth.set_login(false)
    reset_session 
    redirect_to root_path
  end

end