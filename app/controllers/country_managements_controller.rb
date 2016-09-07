class CountryManagementsController < ApplicationController
  def index
    @countries={
    :id=>1,
    :name=>'Germany',
    :code=>'DE'
    }
  end

  def show
    @countries={
        :id=>1,
        :name=>'Germany',
        :code=>'DE'
    }
    @country=@countries.each do |k,v|
      #{k}#{v}
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
