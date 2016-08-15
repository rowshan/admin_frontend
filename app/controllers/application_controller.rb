class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 # include SessionsHelper


  private
  #
  # # Finds the User with the ID stored in the session with the key
  # # :current_user_id This is a common way to handle user login in
  # # a Rails application; logging in sets the session value and
  # # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
        ApiM8::Resources::Accounts::User.find_by(id: session[:current_user_id])
  end
end
