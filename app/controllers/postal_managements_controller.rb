class PostalManagementsController < ApplicationController
  def index
    @postals={:id => 1,
              :code => '10965',
              :city_id => 'city-1'
    }
  end

  def show
    @postals={:id => 1,
              :code => '10965',
              :city_id => 'city-1'
    }

    @postal=@postals.each do |k, v|
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
