class SessionsController < ApplicationController

  # GET /sessions/new
  def new
    # displays login form
  end


  # POST /sessions
  # POST /sessions.json
  def create
    user=ApiM8::Resources::Accounts::User.new
    #user=ApiM8::Resources::Accounts::User.login(params[:login], params[:password])
    user= user.login(params[:login], params[:password])
    #puts params[:login]

    #user= ApiM8::Resources::Accounts::User.login(params[:login], params[:password])
    #logger.debug "New user: #{user.attributes.inspect}"

    if !user.nil?
     session[:current_user_id]=user.id
     redirect_to role_super_admin_dashboards_url, :notice => "Logged in as #{current_user}!"
     #redirect_to root_url,  alert: "logged in"
    else
        flash.now[:error] = "Invalid email/password combination"

      render "new"
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:current_user_id] = nil
    #signed_out
    redirect_to login_url, alert: "Successfully logged out"
  end

end
