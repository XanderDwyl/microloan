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
    user = User.new(account_params)
    if user.save
      set_session_user user
      render template: 'account/index', layout: 'application'
    end
  end

  private
  def account_params
    return params.permit(:username, :password)
  end
end
