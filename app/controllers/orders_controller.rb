class OrdersController < ApplicationController
  def index
    #@orders=ApiM8::Resources::Books::Order.new.index
    #puts @orders
    # respond_to do |format|
    #   format.html
    #   format.json

     @orders={
         :id=>'1',
         :user_id=>'234-er',
         :tenant_id=>'234ww',
         :vat=>'1.2',
         :currency=>'euro',
         :total_amount=>'20',
         :invoice_id=>'invo-1'

     }

     # render :json=>@orders

   #puts @orders[:id]

  end

  def show
  end

  def edit
    # @order=ApiM8::Resources::Books::Order.new.find(params[:id])
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
