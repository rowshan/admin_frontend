class CityManagementsController < ApplicationController
  def index

    # @cities={:id => 1,
    #          :name => 'Berlin',
    #          :slug => 'berlin',
    #          :province_id => 'prov-1'}
  end

  def show
    @cities={:id => 1,
             :name => 'Berlin',
             :slug => 'berlin',
             :province_id => 'prov-1'}

    @city=@cities.each do |k, v|
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
