class Role::CustomersController < ApplicationController
  def index
   # @profiles= ApiM8::Resources::Accounts::Profile.new nil,nil
    #list=@profiles.list.map{|e|[e.id,e.user_id,e.first_name,e.last_name,e.date_of_birth,e.country_of_residence]}
    #hash=eval(list)

    #render json: @profiles
  end

  def show

  end

  def edit
  end

  def create
    @profiles= ApiM8::Resources::Accounts::Profile.new nil,nil,{:first_name=>params[:first_name],
                                                                :last_name=>params[:last_name],
                                                                :date_of_birth=>params[:date_of_birth],
                                                                :country_of_residence=> params[:country_of_residence]}.to_h


   if @profiles.save
     redirected_to role_customers_path, :alert=>"profile has been created successfully!"
   else
     render "new"
   end

  end

  def destroy
  end

  def update
    @profiles= ApiM8::Resources::Accounts::Profile.new.profile

  end
end
