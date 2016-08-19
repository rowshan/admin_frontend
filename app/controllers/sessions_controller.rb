class SessionsController < ApplicationController

  # GET /sessions/new
  def new
    # displays login form
  end


  # POST /sessions
  # POST /sessions.json
  def create
    user=ApiM8::Resources::Accounts::User.new
    user=user.login(params[:login], params[:password])

    if user
      session[:current_user_id]=user.id
      redirect_to role_super_admin_dashboards_url, :notice => "Logged in as #{params[:login]}!"
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render "new"
    end


  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    signed_out
    redirect_to login_url, alert: "Successfully logged out"
  end


end
