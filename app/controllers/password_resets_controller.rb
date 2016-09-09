class PasswordResetsController < ApplicationController

  def index
    if current_user
      redirect_to root_url
    else
      redirect_to '/login'
    end
  end

  def show

  end


  def new

  end

  def create
    @user = @customers = ApiM8::Client::Account::Users.instance.password_forgotten(params[:login])
    @user.instance.password_reset(params[:password_reset_token], params[:password], params[:password_confirmation]) if @user.save!

    redirect_to edit_password_reset_url(id: @user.password_reset_token), :notice => 'Enter your new password'
  end

  def edit
    @user = ApiM8::Client::Account::Users.instance.show(params[:id])


  end

  def update
    @user = ApiM8::Client::Account::Users.instance.show(params[:id])
    puts @user

    @user.password_reset(params[:password], params[:password_confirmation],:password_reset_token=>params[:password_reset_token])

    if @user.update(user_params)

      #@user.update_attributes(params[:password])
      flash[:success] = "Passsword has been changed. "
      redirect_to login_url
    else
      render 'edit'
    end

  end

  private
  def user_params
    params.permit(:login, :password, :password_confirmation, :role_id, :name, :tenant_id)
  end
  end

