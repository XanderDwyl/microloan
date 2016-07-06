class AuthController < ApplicationController
  include AuthHelper

  def login
    redirect_to root_path unless session[:user_id].nil?
  end

  def create
    authenticate params
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
