class Role::SuperAdminDashboardsController < ApplicationController
 # include ApiM8::Authentication::ControllerMethods

  def index
  end

  def new

  end

  def show
    @user=ApiM8::Client::Account::Users.instance.find(params[:id])
  end

  def create
    # p p=user_params
    hash= ApiM8::Client::Account::Roles.instance.create(:name=>params[:name]).to_h
    #p @hash
    #puts @hash.map(&:name)
    #puts @hash.list

    @user= ApiM8::Client::Account::Users.instance.create(login: params[:login],
                                                           password: params[:password],
                                                           password_confirmation: params[:password_confirmation],
                                                           role_id: hash[:id], tenant_id: current_context.tenant_id)

    if @user
      redirect_to root_path, :notice=>' User has been created successfully!'
    else
      render "new", :notice => 'Invalid  Signup!'
    end

    end

  def update


  end


  private
  def user_params
    params.permit(:id,:login, :password, :password_confirmation,:role_id,:name, :tenant_id)
  end


end
