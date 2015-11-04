class UsersController < ApplicationController

  before_action :prevent_login_signup, only: [:create]

  def account
  end

  def update
  end

  def delete
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Successfully created!'
      redirect_to root_path
    else
      flash[:alert] = 'Username must be at least six characters in length'
      redirect_to signup_path
    end
  end

  private

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
