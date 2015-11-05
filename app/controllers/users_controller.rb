class UsersController < ApplicationController

  before_action :prevent_login_signup, only: [:create]

  def signup
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Successfully created!'
      redirect_to root_path
    else
      render :signup
    end
  end

  def edit
  end

  def update
    @user.update user_params
    if @user.save
      flash[:notice] = "Account updated"
    end
  end

  def delete
    @user = User.find params[:id]
    @user.destroy && session[:user_id] = nil
    flash[:notice] = "Account deleted, You have been logged out"
    redirect_to root_path
  end


  private


  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password
    )
  end

  def ensure_logged_in
    unless session[:id]
      redirect_to login_path, alert: "Please log in"
    end
  end
end
