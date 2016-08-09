class SessionsController < ApplicationController

  #http_basic_authenticate_with :name => "frodo", :password => "thering"


  # GET /sessions/new
  def new
    # displays login form
  end


  # POST /sessions
  # POST /sessions.json
  def create
    #user=  ApiM8::Resources::Accounts::User.new(params[:login],params[:password])
    user= ApiM8::Resources::Accounts::User.new(params[:login])
    logger.debug "New user: #{user.attributes.inspect}"
   # if user.is_a?ApiM8::Resources::Accounts::User
  # if user #&& user.authenticate(params[:password])

     if session[:current_user_id]=user.id
      redirect_to role_super_admin_dashboards_url, :notice => "Logged in!"
       #redirect_to root_url, :notice => "Logged in!"
    else
      redirect_to login_url, :notice => "Logged out!"
     # render "new"
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy

    #reset_session
    session[:current_user_id] = nil
    redirect_to login_url, alert: "Successfully logged out"
  end

  # private
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def login_params
  #     params.fetch(:user, {}).permit(:login,:password).require(:user)
  #   end
end
