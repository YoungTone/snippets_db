class SessionsController < ApplicationController

  before_action :prevent_login_signup, only: [:signup, :create, :login, :attempt_login]

  def index
  end

  def signup
    @user = User.new
  end

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user && found_user.authenticate(params[:password])
         session[:user_id] = found_user.id
         redirect_to root_path, flash: {notice: "Welcome back #{found_user.username}!"}
      else
        flash[:notice] = "Incorrect username or password"
        redirect_to login_path
      end
      else
        flash[:notice] = "Please enter valid username and password"
        redirect_to login_path
    end
  end

def logout
  session[:user_id] = nil
  flash[:notice] = "Logged Out"
  redirect_to login_path
end

private

def user_params
  params.require(:user).permit(
    :username,
    :email,
    :password
  )
end

end