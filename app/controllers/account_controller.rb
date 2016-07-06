class AccountController < ApplicationController
  include AuthHelper

  before_action :required_login, only: :index

  def index; end

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
