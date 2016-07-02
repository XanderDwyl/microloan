class AccountController < ApplicationController

  def index; end

  def create
    user = User.new(account_params)
    user.save

    render template: 'account/index', layout: 'application'
  end

  private
  def account_params
    return params.require(:user).permit(:username, :password)
  end
end
