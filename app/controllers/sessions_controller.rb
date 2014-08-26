class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(session_params[:email], session_params[:password])
    if @user
      sign_in(@user)
      redirect_to root_url
    else
      flash.now[:error] = "Username or Password Incorrect"
      @user = User.new(email: session_params[:email])
      render :new
    end
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
