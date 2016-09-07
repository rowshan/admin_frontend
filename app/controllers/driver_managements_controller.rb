class DriverManagementsController < ApplicationController
  def index
    @drivers={:id=>1,
              :first_name=>'JJ',
              :last_name=>'Dove',
              :phone_no=>'123232323',
              :plant_id=>'plant-1',
              :enabled=>'yes'
    }
    #render json: @drivers

  end

  def show
    @drivers={:id=>1,
              :first_name=>'JJ',
              :last_name=>'Dove',
              :phone_no=>'123232323',
              :plant_id=>'plant-1',
              :enabled=>'yes'
    }

    @driver=@drivers.each do|k,v|
      #{k}:#{v}

    end
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end
end
