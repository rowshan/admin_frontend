class InvoicesController < ApplicationController
  def index
    @invoices= ApiM8::Client::Books::Invoices.instance.index


    # render json: @invoices
  end

  def show
    @invoice = ApiM8::Client::Books::Invoices.instance.show(params[:id])

    # render json: @invoice

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
