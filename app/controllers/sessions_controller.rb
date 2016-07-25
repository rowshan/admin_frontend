class SessionsController < ApplicationController

  # GET /sessions/new
  def new
    # displays login form
  end


  # POST /sessions
  # POST /sessions.json
  def create
    #user auth
    user= ApiM8::Resources::Accounts::User.new(:login=>params[:login],:password=>params[:password])
    session[:current_user_id]=user.id
    redirect_to home_index_url
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
