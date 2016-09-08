class ShiftManagementsController < ApplicationController
  def index
    @shifts={
        :id=>1,
        :name=>'morning',
        :enabled=>'no',
        :start_time=>'2:00 pm',
        :end_time=>'00:00 am',
        :plant_id=>'plant-1'



    }
  end

  def show
    @shifts={
        :id=>1,
        :name=>'morning',
        :enabled=>'no',
        :start_time=>'2:00 pm',
        :end_time=>'00:00 am',
        :plant_id=>'plant-1'

    }
    @shift=@shifts.each do |k,v|
      #{k} #{v}
    end
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
