class Role::CustomersController < ApplicationController
  def index
    @profiles= ApiM8::Resources::Accounts::Profile.new.all
    # @products= ApiM8::Resources::Shop::Product.new.all
    # puts @products
   # redirect_to @products
   #render :json=>@products.to_json
    render
  end

  def show

  end

  def edit
  end

  def create

  end

  def destroy
  end

  def update
    @profiles= ApiM8::Resources::Accounts::Profile.new.profile

  end
end
