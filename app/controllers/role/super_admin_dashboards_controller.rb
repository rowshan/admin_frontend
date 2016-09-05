class Role::SuperAdminDashboardsController < ApplicationController
 # include ApiM8::Authentication::ControllerMethods

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
    # p p=user_params
    @hash= ApiM8::Resources::Accounts::Role.new nil,nil,{:name=>params[:name]}.to_h
    #hash=role.fetch_values(:name, :id)
    @hash.save
    #puts @hash.map(&:name)
    #puts @hash.list
   # role.select{}
    #role.save

     ro= ApiM8::Resources::Accounts::Role.new nil,nil
     old_role=ro.list.map{|x| [x.id, x.name]}
    #
    #
    # #if role.exists?
     puts old_role


    @user= ApiM8::Resources::Accounts::User.new nil, nil, {login: params[:login],
                                                           password: params[:password],
                                                           password_confirmation: params[:password_confirmation],
                                                           role_id: @hash.id, tenant_id: current_context.tenant_id}

    if @user.save
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

  def role_params
    params.permit(:id, :name)

  end

end
