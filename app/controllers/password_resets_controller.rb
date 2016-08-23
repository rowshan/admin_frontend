class PasswordResetsController < ApplicationController
 # helper_method :password_reset_token

  def index
    if current_user
      redirect_to root_url
    else
      redirect_to '/login'
    end
  end

  # def show
  #  # @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login]) # if @user
  #
  #
  # end


  def new

  end

  def create
    @user = ApiM8::Resources::Accounts::User.new.password_forgotten(params[:login]) # if @user
    # p @user(
    # @user.send(:password_reset,:password_reset_token,:password,:password_confirmation) #(params[:password_reset_token], params[:password], params[:password_confirmation]) if @user
    @user.password_reset!
    #@user.save
    #logger.debug "New token: #{@user.attributes.inspect}"

    redirect_to edit_password_reset_url(id: @user.password_reset_token), :notice => 'Enter your new password'
    p @user.password_reset_token
  end

  def edit
    # @user = ApiM8::Resources::Accounts::User.new(params[:id]).password_reset!
    # puts @user.inspect
    # #  if @user
    # #   redirect_to '/login', :alert => 'Password reset does not exist.'
    #  @user.password_reset_at < 2.hours.ago
    #   redirect_to '/login ', :alert => "Password reset has expired."
    # # end
    #  end
  end


  def update
    @user = ApiM8::Resources::Accounts::User.new(params[:id]) if @user
    # @user = ApiM8::Resources::Accounts::User.new #password_reset(params[:password_reset_token], params[:password], params[:password_confirmation])
    # if params[:password] == nil #password_reset.nil?(:password)
    #   @user.errors.add(:password, 'can not be empty')
    #
    #   render "edit"


    #@user.update_attributes(params[:password_reset_token],params[:password], params[:password_confirmation])
     @user.update_attributes!(password_reset_params)
      # @user.password_reset_token = nil
      # @user.save!
      #
      if @user.valid?
      session[:current_user_id] = @user.id
      flash[:success] = "Passsword has been reset. "
      redirect_to @user
    else
      render 'edit'
    end

    # else
    #   flash.now[:error] = @user.errors.full_messages
    #   render :action => "edit"
    # end
  end


  # @user=password_reset(params[:password_reset_token], params[:password], params[:password_confirmation])
  # p @user
  # if @user
  #   redirect_to root_url,  :notice => 'Please fill the form!'
  #   puts @user.password_reset_token
  # else
  #   render 'new', :alert => 'User does not match!'
  # end

  def password_reset_params
    params.permit(:password, :password_confirmation)

  end


end
