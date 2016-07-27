class SessionsController < ApplicationController
  #http_basic_authenticate_with :name => "frodo", :password => "thering"


  # GET /sessions/new
  def new
    # displays login form
  end


  # POST /sessions
  # POST /sessions.json
  def create
    #user auth
    user=  ApiM8::Resources::Accounts::User.new(:login=>params[:login],:password=>params[:password])
   # user= ApiM8::Resources::Accounts::User.find_by_login(:login => params[:login])

   # if user.is_a?ApiM8::Resources::Accounts::User
    if user #&& user.authenticate

      session[:current_user_id]=user.id
      redirect_to role_super_admin_dashboards_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"

      render "new"
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to home_index_url
  end

  # private
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def login_params
  #     params.fetch(:user, {}).permit(:login,:password).require(:user)
  #   end
end
