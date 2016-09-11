class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username:params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      if current_admin?
        redirect_to admin_categories_path
      else
        redirect_to @user
      end
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
