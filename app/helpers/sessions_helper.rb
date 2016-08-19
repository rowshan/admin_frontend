module SessionsHelper
  # def sign_in(user)
  #   session[:user_id]=user.id
  #   self.current_user= user
  # end
  #
  # #setter method
  # def current_user=(user)
  #   @current_user=user
  # end
  #
  # #getter method
  # # def current_user
  # #   user=ApiM8::Resources::Accounts::User.new
  # #
  # #   @_current_user ||= session[:current_user_id] &&
  # #     user.find_by(id: session[:current_user_id])
  # # end
  # def signed_in?
  #   !current_user.nil?
  # end
  #
  # # Remembers a user in a persistent session.
  # # def remember(user)
  # #   ApiM8::Resources::Accounts::User.remember
  # #   cookies.permanent.signed[:user_id] = user.id
  # #   cookies.permanent[:remember_token] = user.remember_token
  # # end
  # def signed_out
  #   session[:current_user_id]=nil
  #   self.current_user= nil
  # end
  #
  # def current_user?(user)
  #   user== current_user
  # end
  # def deny_access
  #   redirect_to login_path, :notice=> "Please sign in to access this page"
  # end
end
