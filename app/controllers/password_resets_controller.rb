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
    @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login])
    @user.password_reset(params[:password_reset_token], params[:password], params[:password_confirmation]) if @user.save!

    redirect_to edit_password_reset_url(id: @user.password_reset_token), :notice => 'Enter your new password'
  end

  def edit

  end

  def update
    @user = ApiM8::Resources::Accounts::User.new nil, nil, {:id => params[:id]}#, :password => params[:password],
                                                            #:password_confirmation => params[:password_confirmation]}
    puts @user
    if @user.save!
      @user.password_reset(params[:password], params[:password_confirmation],:password_reset_token=>params[:password_reset_token])

      @user.update_attributes(user_params)

      #@user.update_attributes(params[:password])
      flash[:success] = "Passsword has been changed. "
      redirect_to root_url
    else
      render 'edit'
    end

  end

  private
  def user_params
    params.permit(:id, :login, :password, :password_confirmation, :role_id, :name, :tenant_id)
  end
  end

