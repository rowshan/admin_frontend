class Role::CustomersController < ApplicationController
  def index
    # @categories= ApiM8::Resources::Shop::Category.all
  end

  def show

  end

  def edit
  end

  def create
     @categories= ApiM8::Resources::Shop::Category.new.localized_categories
    if @categories
      redirect_to @categories
    else
      render "index"
    end


  end

  def destroy
  end

  def update
  end
end
