class Role::CustomersController < ApplicationController
  def index
    @customers = ApiM8::Client::Account::Users.instance.index
  end

  def show
    @customer = ApiM8::Client::Account::Users.instance.show(params[:id])

  end

  def edit
    @customer = ApiM8::Client::Account::Users.instance.show(params[:id])

  end

  def create
    @customer= ApiM8::Client::Account::Users.instance.create(:first_name=>params[:first_name],
                                                                :last_name=>params[:last_name],
                                                                :date_of_birth=>params[:date_of_birth],
                                                                :country_of_residence=> params[:country_of_residence])#.to_h


   if @customer
     redirect_to role_customers_path, :alert=>"profile has been created successfully!"
   else
     render "new" ,:alert=>"Create a new user please!"
   end

  end

  def update

    @customer=ApiM8::Client::Account::Users.instance.show(params[:id])

     @customer.profile.update(:first_name=>params[:first_name],
                                              :last_name=>params[:last_name],
                                              :date_of_birth=>params[:date_of_birth],
                                              :country_of_residence=> params[:country_of_residence])
     if  @customer.profile.save

      redirect_to role_customers_path
    end

  end

  def destroy
    #respond_with @profile.find(params[:id]) .soft_delete
  end


end
