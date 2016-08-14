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
    @user = ApiM8::Resources::Accounts::User.find(params[:id])

  end

  def new
  end

  def create
    @user = ApiM8::Resources::Accounts::User.new
     @user=@user.login(params[:login],params[:password])
    if !@user.nil?
      @user.password_reset
      redirect_to edit_password_reset_url

      ## , :notice => "Email sent with password reset instructions."
    else
      render "new", :alert=>"User does not match"
    end
  end

  def update
    @user = ApiM8::Resources::Accounts::User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert=> "password reset has expired. "
      elseif @user.update_attributes(params[:user])

      redirect_to root_url, :notice=>"Password has been reset!"

    else
      render "edit"
    end
  end

  def destroy
  end


  private
  def get_user
    @user = User.find_by(email: params[:email])
  end

  #Confirms a valid user.
  def valid_user
    unless(@user && @user.activated? )
      redirect_to root_url
    end
  end
end
