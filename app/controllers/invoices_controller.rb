class InvoicesController < ApplicationController
  def index
    @invoices= ApiM8::Client::Books::Invoices.instance.index
    #  # (:id=>params[:id],
    #                                                          :invoice_date=>params[:invoice_date],
    #                                                          :invoice_no=>params[:invoice_no],
    #                                                          :user_id=>params[:user_id],
    #                                                          :vat=>params[:vat],
    #                                                          :total_amount=>params[:total_amount],
    #                                                          :tenant_id=>current_context.tenant_id
    # )

    # @invoices={:id => "1",
    #            :invoice_date => '12-23-1984',
    #            :invoice_no => "dweew",
    #            :user_id => session[:current_user_id],
    #            :vat => 1.345,
    #            :total_amount => 30.456,
    #            :tenant_id => 'ten-1' #current_context.tenant_id
    # }
    # puts @invoices[:id]

    # render json: @invoices
  end

  def show
    @invoices={:id => "1",
               :invoice_date => '12-23-1984',
               :invoice_no => "dweew",
               :user_id => session[:current_user_id],
               :vat => 1.345,
               :total_amount => 30.456,
               :tenant_id => 'ten-1' #current_context.tenant_id
    }

    @invoice=@invoices.each do|k,v|
      #{k}:#{v}
    end
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
