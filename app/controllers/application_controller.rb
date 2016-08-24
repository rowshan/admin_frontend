class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #include SessionsHelper
  helper_method :current_user, :signed_in, :signed_out


  protected
  #
  # # Finds the User with the ID stored in the session with the key
  # # :current_user_id This is a common way to handle user login in
  # # a Rails application; logging in sets the session value and
  # # logging out removes it.
  def current_user
    @current_user ||= session[:current_user_id] &&
        ApiM8::Resources::Accounts::User.new(id: session[:current_user_id])
  end

  def signed_in
    !current_user.nil?
  end

  def signed_out
    session[:current_user_id]=nil
  end


end
