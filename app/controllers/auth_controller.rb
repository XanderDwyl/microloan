class AuthController < ApplicationController
  def login
    redirect_to root_path unless session[:user_id].nil?
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Welcome back, #{user.username}"
    else
      redirect_to '/login', :notice => "Invalid email or password"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/login', :notice => "Successfully logout!"
  end

  private
  def account_params
    return params.permit(:username, :password)
  end
end
