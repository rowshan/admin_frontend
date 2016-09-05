class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  # Finds the User with the ID stored in the session with the key
   # :current_user_id This is a common way to handle user login in
   # a Rails application; logging in sets the session value and
   # logging out removes it.
  def current_user
    @current_user ||= session[:current_user_id] &&
        ApiM8::Resources::Accounts::User.new(id: session[:current_user_id])
  end

  helper_method :current_user
  def current_context
    @context ||= ApiM8::Token.show ApiM8::Connection.current_token.token
  end
  helper_method :current_context

  def signed_in
    !current_user.nil?
  end
  helper_method :signed_in
  def sign_out
    session[:current_user_id]=nil
  end
  helper_method :sign_out

end
