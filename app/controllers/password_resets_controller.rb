class PasswordResetsController < ApplicationController
  def index
    # if current_user
    #   redirect_to my_accounts_url
    # else
    #   redirect_to '/login'
    # end
  end

  def show
  end


  def new
  end

  def create
    @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login])
      @user.send_password_reset if @user
      redirect_to send_password_reset_url(@user.password_reset_token)
  end

  def edit
   # @user = ApiM8::Resources::Accounts::User.new(params[:id])
    #@user.password_reset!
    @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset_token!

  end


  def update
    #  @user = ApiM8::Resources::Accounts::User.new(params[:id])
    #  puts @user
    @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset_token!
     #@user=   @user.password_reset_token!
     if @user.password_reset_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert=> "password reset has expired. "
     elsif  @user.update

      redirect_to root_url, :notice=>"Password has been reset!"

    else
      render "edit"
    end
  end

  def destroy
  end


  #private
  # def get_user
  #   @user = ApiM8::Resources::Accounts::User.new
  #   @user = User.find_by(login: params[:login])
  # end
  #
  # #Confirms a valid user.
  # def valid_user
  #   @user = ApiM8::Resources::Accounts::User.new
  #   unless(@user && @user.activate(2.seconds.ago) )
  #     redirect_to root_url
  #   end
  # end
end
