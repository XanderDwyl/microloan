module ApplicationHelper
  def set_session_user user
    session[:user_id] = user.id
    session[:username] = user.username

    # Todo: add user profiles
  end
end
