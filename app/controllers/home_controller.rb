class HomeController < ApplicationController
  def index
    flash[:notice] = "Welcome!"
  end
end

