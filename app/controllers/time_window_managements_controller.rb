class TimeWindowManagementsController < ApplicationController
  def index
    @time_windows={
        :id=>1,
        :label=>'sasasa',
        :tenant_id=>'ten-1',
        :start_time=>'2:00 pm',
        :end_time=>'00:00 am'

    }
  end

  def show
    @time_windows={
        :id=>1,
        :label=>'sasasa',
        :tenant_id=>'ten-1',
        :start_time=>'2:00 pm',
        :end_time=>'00:00 am'

    }
    @time_window=@time_windows.each do |k,v|
      #{k} #{v}
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
