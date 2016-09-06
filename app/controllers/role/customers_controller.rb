class Role::CustomersController < ApplicationController
  def index
    # @profiles= ApiM8::Resources::Accounts::Profile.new nil,nil
    #list=@profiles.list.map{|e|[e.id,e.user_id,e.first_name,e.last_name,e.date_of_birth,e.country_of_residence]}
    #hash=eval(list)


    #generate a hash here
    @profiles={
        :id=>session[:current_user_id],
        :first_name=>"Anne",
        :last_name=>"Marry",
        :date_of_birth=>'01.01.1970',
        :country_of_residence=>'Germany'
    }



    #render json: @profiles
  end

  def show
   # @profile=@profiles.find(@profiles[:id])
    #respond_with(@profile)
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
     render "new" ,:alert=>"Create a new user please!"
   end

  end

  def update
    # @profiles= ApiM8::Resources::Accounts::Profile.new.profile
    @profiles=@profiles.find(params[:id])
    if @profiles.update(@profiles)

      redirect_to role_customers_path
    end

  end

  def destroy
    #respond_with @profile.find(params[:id]) .soft_delete
  end


end
