class Role::SuperAdminDashboardsController < ApplicationController
  def index
  end

  def new
    #create signup_form for new user
    @user= ApiM8::Resources::Accounts::User.new

  end

  def create
    #user auth
    #@user= ApiM8::Resources::Accounts::User.new(params[:login],params[:password],params[:confirmation])
    @user= ApiM8::Resources::Accounts::User.new.create(params[:user])
    debugger
    if @user.save

      redirect_to role_super_admin_dashboards_path @user.id
    else
      render "new", :notice => 'User exists.Select another user name '
    end


  end


  private
  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation, :role_id, :tenant_id)
  end


end
