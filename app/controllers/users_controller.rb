class UsersController < ApplicationController
  def login
  end

  def home
  end

  def create
    @user = User.create(
      email: params[:email],
      password_digest: params[:password]
    )
  end

  def resume
  end
end
