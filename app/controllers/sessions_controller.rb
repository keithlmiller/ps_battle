class SessionsController < ApplicationController
  def new
    redirect_to root_url if current_user
  end
  
  def create
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Sign in successfully."
    else
      render :new
    end
  end
  
  def destroy
    reset_session
    session.clear
    redirect_to root_url
  end
  
end
