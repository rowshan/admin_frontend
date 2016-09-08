class TripManagementsController < ApplicationController

  def index
    @trips={
        :id => 1,
        :trip_kind_id => 'wash-1',
        :order_id => 'order-1',
        :date => '12/09/2016 2:00 pm',
        :time_window_id => 't-1'
    }
  end

  def show
    @trips={
        :id => 1,
        :trip_kind_id => 'wash-1',
        :order_id => 'order-1',
        :date => '12/09/2016 2:00 pm',
        :time_window_id => 't-1'
    }
    @trip=@trips.each do |k, v|
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
