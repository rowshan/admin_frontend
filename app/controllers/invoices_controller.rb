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
    @invoice = ApiM8::Client::Books::Invoices.instance.show(params[:id])

  end

  def new
  end

  def create
    @invoice = ApiM8::Client::Books::Invoices.instance.create(
         :invoice_no=> params[:invoice_no],
         :invoice_date=> params[:invoice_date],
         :vat=> params[:vat],
         :user_id=>params[:user_id],
        :total_amount=> params[:total_amount],
        :currency=> params[:currency],
        :tenant_id=> current_context.tenant_id)

    if @invoice
      redirect_to invoices_path, :alert=>"Invoice has been created successfully!"
    else
      render "new" ,:alert=>"Create a new invoice please!"
    end
  end

  def update
    @invoice = ApiM8::Client::Books::Invoices.instance.show(params[:id])

    @invoice.update(
                    :vat=> params[:vat],
                    :total_amount=> params[:total_amount],
                    :currency=> params[:currency])
    if  @invoice.save

      redirect_to invoices_path, :notice=>'Invoice has been updated.'
    else
      redirect_to new_role_admin_dashboard
    end

  end

  def delete
  end
end
