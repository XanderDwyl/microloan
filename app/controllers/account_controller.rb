class AccountController < ApplicationController
  include AuthHelper

  before_action :required_login, only: :index

  def index
    @user = session
  end

  def new
    notice_msg = "Can create user when login"
    redirect_to account_index_path, :notice => notice_msg if isLogin
  end

  def create
  end

  def register
    user = User.new(account_params)
    begin
      if user.save
        set_session_user user
        notice_msg = "Welcome #{user[:username]}"
        redirect_to account_index_path, :notice => notice_msg
      end
    rescue ActiveRecord::RecordNotUnique
      notice_msg = "Duplicate entry '#{user[:username]}'"
      redirect_to new_account_path, :notice => notice_msg
    end
  end

  private
  def account_params
    return params.permit(:username, :password)
  end
end
