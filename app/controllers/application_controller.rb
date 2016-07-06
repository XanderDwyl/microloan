class ApplicationController < ActionController::Base
  include AuthHelper

  protect_from_forgery with: :exception

  def required_login
    notice_msg = "You must be logged in to access this section"
    redirect_to login_path, :notice => notice_msg unless isLogin
  end
end
