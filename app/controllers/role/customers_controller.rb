class Role::CustomersController < ApplicationController
  def index
    # @profiles= ApiM8::Resources::Accounts::Profile.new nil,nil
    #list=@profiles.list.map{|e|[e.id,e.user_id,e.first_name,e.last_name,e.date_of_birth,e.country_of_residence]}
    #hash=eval(list)
    # profiles=Hash.new
    #
    # profiles[:first_name]="Anne"
    # profiles[:last_name]='Marry'
    # profiles[:date_of_birth]= '01.01.1970'
    # profiles[:country_of_residence]='Germany'


    #generate a hash here
    @profiles={
        :id=> 1,
        :first_name=>"Anne",
        :last_name=>"Marry",
        :date_of_birth=>'01.01.1970',
        :country_of_residence=>'Germany'
    }



    #puts profiles
    #list=profiles.map{|e | [e.first_name,e.las]}
    #puts list
    #render json: @profiles
  end

  def show
    @profile=@profiles.find(@profiles[:id])

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
