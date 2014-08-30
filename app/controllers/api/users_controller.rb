class Api::UsersController < ApplicationController

  def new
    @user = User.new
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to api_user_url(@user)
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
    render edit_api_user_url(@user)
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to api_user_url(@user)
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :location_id, :biography, :profile_picture)
  end
end