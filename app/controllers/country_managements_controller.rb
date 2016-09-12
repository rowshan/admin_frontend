class CountryManagementsController < ApplicationController
  def index

    @countries=ApiM8::Client::KB::Countries.instance.index

  end

  def show
    @country=ApiM8::Client::KB::Countries.instance.show(params[:id])


  end

  def edit
    @country=ApiM8::Client::KB::Countries.instance.show(params[:id])

  end

  def new
  end

  def create
    @country=ApiM8::Client::KB::Countries.instance.create(:name => params[:name],
                                                          :code => params[:code])

    if @country
      redirect_to country_managements_path, :alert => "country has been created successfully!"
    else
      render "new", :alert => "Create a new country please!"
    end

  end

  def update
    @country=ApiM8::Client::KB::Countries.instance.show(params[:id])
    @country.update(:name => params[:name],
                    :code => params[:code])
    if @country.save
      redirect_to country_managements_path, :notice=>'Country has been updated.'

    else
      render "edit"

    end
  end

  def delete
  end
end
