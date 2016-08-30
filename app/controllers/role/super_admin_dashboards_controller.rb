class Role::SuperAdminDashboardsController < ApplicationController
  def index
  end

  def new
    #create signup_form for new user
   #@user= ApiM8::Resources::Accounts::User.new
   # p @user

  end

  def show
    @user=ApiM8::Resources::Accounts::User.new(params[:id])
  end

  def create
    p p=user_params

    #@user= ApiM8::Resources::Accounts::User.new(params[:login],params[:password],params[:password_confirmation],params[:role])
    @user= ApiM8::Resources::Accounts::User.new(user_params)  # if ApiM8::Resources::Accounts::Role.new
    #@user.ApiM8::Resources::Accounts::Role.new = 'super_admin'
    #session[:current_user_id]=@user.id
    if @user

      redirect_to role_super_admin_dashboards_path, :notice=>' User has been created successfully!'
    else
      render "new", :notice => 'User exists.Select another user name.'
    end


  end


  private
  def user_params
    params.permit :id,:commit,:utf8, :authenticity_token, :login, :password, :password_confirmation,:role
  end


end
