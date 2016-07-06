module ApplicationHelper
  def set_session_user user
    session[:user_id] = user.id
  end
end
