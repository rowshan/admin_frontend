class ScheduleManagementsController < ApplicationController
  def index
    @schedules={
        :id=>1,
        :date=>'12/7/2016',
        :shift_id=>'s-1',
        :driver_id=>'d-1'
    }
  end

  def show

        @schedules={
            :id=>1,
            :date=>'12/7/2016',
            :shift_id=>'s-1',
            :driver_id=>'d-1'
        }
    @schedule=@schedules.each do |k,v|
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
