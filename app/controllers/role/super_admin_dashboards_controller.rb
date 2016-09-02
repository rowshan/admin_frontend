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

     #user=ApiM8::Resources::Accounts::User.new

    tenant= ApiM8::Resources::Tenant.new.id
    @user= ApiM8::Resources::Accounts::User.new nil, nil, {login: params[:login],
                                                           password: params[:password],
                                                           password_confirmation: params[:password_confirmation],
                                                           role_id: @hash.id, tenant_id:tenant}
    puts @user
     #   puts @user.errors

     #session[:current_user_id]=@user.id

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
   # params.require(:user).permit(:id,:user, :login, :password, :password_confirmation,:role_id=>[])
    params.permit(:id,:login, :password, :password_confirmation,:role_id,:name, :tenant_id)
  end

  def role_params
    params.permit(:id, :name)

  end

  # def tenant
  #   user=ApiM8::Resources::Accounts::User.new#(id: session[:current_user_id])
  #
  #   if signed_in
  #
  #     ApiM8::Resources::Tenant.new.id=user.id
  #   end
  #
  # end
end
#
#  @role=ApiM8::Resources::Accounts::Role.new nil,nil.list
# # @role=@role.map{|x| [x.id, x.name]}
#  print @role
#@user= ApiM8::Resources::Accounts::User.create(nil,nil,params[:login],params[:password],params[:password_confirmation],:role_id => {})
# @user= ApiM8::Resources::Accounts::User.new(nil,nil,user_params)  if role #ApiM8::Resources::Accounts::Role.new(nil,nil).list.map{|x| [x.id, x.name]}
#puts @user
#puts @user.errors
#session[:current_user_id]=@user.id
#if @user