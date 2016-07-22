class HomeController < ApplicationController
  def index
    flash[:notice] = "Hello Flash"

  end
end
