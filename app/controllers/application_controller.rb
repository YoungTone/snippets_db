class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def prevent_login_signup
  	if session[:user_id]
  		redirect_to root_path, notice: "You are already logged in"
  	end
  end

def confirm_logged_in
   	 redirect_to login_path, alert: "Please Log In" unless session[:user_id]
end

end
