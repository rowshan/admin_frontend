class MyAccountController < ApplicationController
  def index
  end

  def edit
  end

  def create
    @user= ApiM8::Resources::Accounts::User.profile()


  end
  def show
  end

  def update
  end

  def destroy
  end

end
