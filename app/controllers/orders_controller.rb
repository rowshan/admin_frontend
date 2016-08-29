class OrdersController < ApplicationController
  def index
    @orders=ApiM8::Resources::Books::Order.new.all
    puts @orders
    respond_to do |format|
      format.html
      format.json
      #render :json=>@orders.to_json

    end

  end

  def show
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
