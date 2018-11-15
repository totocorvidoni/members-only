class ApplicationController < ActionController::Base

  # Signs the user with a permanent cookie, sets the current user
  def sign_in(user)
    cookies.permanent[:remember_token] = user.generate_token # Generates a new token and saves the value in a cookie
    self.current_user = user
  end

  def sign_out
    cookies.delete :current_user
    cookies.delete :remember_token
  end

  def current_user
    cookies[:current_user] ||= User.find_by(remember_token: cookies[:remember_token])
  end

  def current_user=(user)
    cookies[:current_user] = user
  end

  def member_check
    return if logged_in?

    flash[:danger] = 'please, log in.'
    redirect_to login_path
  end

  def logged_in?
    current_user.nil? ? false : true
  end
end
