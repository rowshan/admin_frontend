class Role::SuperAdminDashboardsController < ApplicationController
  def index
  end

  def new
    #create signup_form for new user
    @role_options= ApiM8::Resources::Accounts::Role.all.map{|r| [r.name]}

  end

  def create
    #user auth
    #@user= ApiM8::Resources::Accounts::User.new(params[:login],params[:password],params[:confirmation])
    @user= ApiM8::Resources::Accounts::User.new(params[:user])



  end

   def show

   end
  #private
  # def user_params
  #   re
  # end

  end
