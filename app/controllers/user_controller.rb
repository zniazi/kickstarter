class UserController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :name, :location_id, :biography)
  end
end
