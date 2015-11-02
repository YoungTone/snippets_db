class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Successfully created!"
      redirect_to root_path
    else
      flash[:alert] = "Username must be at least six characters in length"
      render :signup
    end
  end

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

end
