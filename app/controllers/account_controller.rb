class AccountController < ApplicationController

  def index; end

  def create
    puts account_params
    user = User.new(account_params)
    user.save

    render template: 'account/index', layout: 'application'
  end

  private
  def account_params
    return params.permit(:username, :password)
  end

end
