class SessionsController < ApplicationController

	def index
	end

	def login
	end

	def attempt_login
		if params[:username].present? && params[:password].present?
			found_user = User.where(username: params[:username]).first
			if found_user && found_user.authenticate(params[:password])
				session[:id] = found_user.id
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
	def confirm_logged_in
		unless session[:user_id]
			redirect_to login_path, alert: 'Please Log In'
		end
	end

	def prevent_logged_in
		if session[:user_id]
			redirect_to home_path
		end
	end
end
