class PasswordResetsController < ApplicationController
  def index
  end

  def show

  end

  def new
  end

  def create
    user = ApiM8::Resources::Accounts::User.new(:login=>params[:login])
    user.password_reset if user
    redirect_to root_url, :notice => "Email sent with password reset instructions."
  end

  def update
  end

  def destroy
  end
end
