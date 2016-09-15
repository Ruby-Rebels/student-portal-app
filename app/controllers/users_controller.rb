class UsersController < ApplicationController
  def login
  end

  def create
    @user = User.create(
      email: params[:email],
      password_digest: params[:password]
    )
  end
end
