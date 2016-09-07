class PlantManagementsController < ApplicationController
  def index
   # @plants=ApiM8::Resources::Logistic::Plant.new nil,nil
    @plants={
        :id=>1,#session[:current_user_id],
        :company_name=>"Incepta GmbH",
        :email=>"incepta@rocket.de",
        :phone_no=>'015166705921',
        :address=>'am treptower park 16, 19329 berlin ',
        :tenant_id =>'ten-1'#current_context.tenant_id
    }
   #render json: @plants

  end

  def show
    @plants={
        :id=>1,#session[:current_user_id],
        :company_name=>"Incepta GmbH",
        :email=>"incepta@rocket.de",
        :phone_no=>'015166705921',
        :address=>'am treptower park 16, 19329 berlin ',
        :tenant_id =>'ten-1'#current_context.tenant_id
    }

    @plant=@plants.each do|k,v|
      #{k}:#{v}
    end
    #render json: @plant

  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
