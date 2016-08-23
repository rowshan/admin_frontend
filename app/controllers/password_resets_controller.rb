class PasswordResetsController < ApplicationController

  def index
    if current_user
      redirect_to root_url
    else
      redirect_to '/login'
    end
  end

  # def show
  #  # @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login]) # if @user
  #
  #
  # end


  def new

  end

  def create
    user = ApiM8::Resources::Accounts::User.new
    @user=user.password_forgotten(params[:login]) # if @user
   #  @user.password_reset(params[:password_reset_token], params[:password], params[:password_confirmation])

    @user.password_reset! if @user

    redirect_to edit_password_reset_url(id: @user.password_reset_token), :notice => 'Enter your new password'
    p @user.password_reset_token
  end

  def edit

  end


  def update
    @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset!
    if @user
    @user.update_attributes(params[:password],params[:password_confirmation])   #(password_reset_params)
      #session[:current_user_id] = @user.id
      flash[:success] = "Passsword has been reset. "
      redirect_to root_url
    else
      render 'edit'
    end

  end
  # private
  # def password_reset_params
  #   params.permit(:password, :password_confirmation)
  #
  # end



end
