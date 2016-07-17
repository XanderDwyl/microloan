module AuthHelper
  include ApplicationHelper

  def authenticate(user_params)
    user = User.find_by_username(user_params[:username])

    # not yet authenticate
    route_url = login_path
    notify_msg = "Invalid email or password"

    if user && user.authenticate(user_params[:password])
      set_session_user user

      route_url = root_path
      notify_msg = "Welcome back, #{user[:username]}"
    end

    redirect_to route_url, flash: { success: notify_msg }
  end

  def isLogin
    session[:user_id].present?
  end
end
