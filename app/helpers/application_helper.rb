module ApplicationHelper
  def set_session_user user
    session[:user_id] = user.id
    session[:username] = user.username

    profile = Profile.find_by user_id: user.id
    if profile.present?
      session[:full_name] = %Q(#{profile[:firstname]} #{profile[:lastname]})
    end
    # Todo: add user profiles
  end
	def retrieve_field lists, field
		profile_field = '' and return if lists.nil?
		profile_field = lists[field].to_s
		profile_field
	end
end
