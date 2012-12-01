class UsersController < ApplicationController
  def index
    @user = User.find(@auth.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    username = @user.username
    session[:user_id] = @user.id

    redirect_to @user
  end

  def edit
    if params[:id].to_i == @auth.id
      @user = User.find(params[:id])
    else
      #redirect to root if @auth is not there
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end
end