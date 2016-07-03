class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def required_login
    redirect_to login_path, :notice => "You must be logged in to access this section" if session[:user_id].nil?
  end
end
