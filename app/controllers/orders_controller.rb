class OrdersController < ApplicationController
  def index
    @orders= ApiM8::Client::Books::Orders.instance.index

  end

  def show
    @order= ApiM8::Client::Books::Orders.instance.show(params[:id])

  end

  def edit
    @order= ApiM8::Client::Books::Orders.instance.show(params[:id])
  end

  def new
  end

  def create
  end

  def update
    @order= ApiM8::Client::Books::Orders.instance.show(params[:id])

    @order.update(
        :vat=> params[:vat],
        :total_amount=> params[:total_amount],
        :currency=> params[:currency])
    if  @order.save

      redirect_to orders_path, :notice=>'Order has been updated.'
    else
      redirect_to "edit"
    end
  end

  def delete
  end
end
