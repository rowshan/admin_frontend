class PasswordResetsController < ApplicationController
  def index
    if current_user
      redirect_to my_accounts_url
    else
      redirect_to '/login'
    end
  end

  # def show
  # end

  def edit
    @user = ApiM8::Resources::Accounts::User.find_by_password_reset_token!(params[:id])

  end


  def new
  end

  def create
    @user = ApiM8::Resources::Accounts::User.new(params[:login])
    if !@user.nil?
      @user.password_reset
      redirect_to password_resets_path #edit_password_reset_path

      ## , :notice => "Email sent with password reset instructions."
    else
      render "new", :alert=>"User does not match"
    end
  end

  def update


  end

  def destroy
  end
end
