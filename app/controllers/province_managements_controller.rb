class ProvinceManagementsController < ApplicationController
  def index
    @provinces={:id=>1,
    :name=>'Berlin',
    :slug=>'berlin'}
  end

  def show
    @provinces={:id=>1,
                          :name=>'Berlin',
                          :slug=>'berlin'}

    @province=@provinces.each do |k,v|
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
