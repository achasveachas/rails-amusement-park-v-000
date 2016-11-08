class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if !!@user
      login(@user)
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
