class PasswordResetsController < ApplicationController
  def index
    # if current_user
    #   redirect_to my_accounts_url
    # else
    #   redirect_to '/login'
    # end
  end

  def show

  end


  def new
  end

   def create

    @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login])
    #@user.password_reset(params[:password],params[:password_reset_token],params[:password_confirmation]) if puts @user.inspect
    @user.send_password_reset if  @user
    #@user.activate(params[:activation_token])
    redirect_to send_password_reset_url(@user.password_reset_token)
  end

  def edit
    @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset_token!
    puts @user.inspect
    # if @user.nil?
    #   redirect_to '/login', :alert => 'Password reset does not exist.'
    # elsif @user.password_reset_at < 2.hours.ago
    #   redirect_to '/login ', :alert => "Password reset has expired."
    # end
  end


  def update
    @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset_token!
    if @user.password_reset_at < 2.hours.ago
       redirect_to new_password_reset_path, :alert => "password reset has expired. "
    # elsif @user.update_attributes(@user)
    #   redirect_to root_url, :notice => "Password has been reset!"
    #
    # else
    #   render "edit"
    # end

    elsif @user.update_attributes(params[:login])
      @user.password_reset_token = nil
      @user.save!

      if @user.valid?
        session[:user_id] = @user.id
        redirect_to login_url, :notice => "Your password has been reset!"
      else
        render 'update'
      end

    else
      flash.now[:error] = @user.errors.full_messages
      render :action => "edit"
    end
  end

  def destroy
  end


  #private
  # def get_user
  #   @user = ApiM8::Resources::Accounts::User.new
  #   @user = User.find_by(login: params[:login])
  # end
  #
  # #Confirms a valid user.
  # def valid_user
  #   @user = ApiM8::Resources::Accounts::User.new
  #   unless(@user && @user.activate(2.seconds.ago) )
  #     redirect_to root_url
  #   end
  # end
end
