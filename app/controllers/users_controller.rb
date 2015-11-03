class UsersController < ApplicationController

  def account
  end

  def update
  end

  def delete
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
