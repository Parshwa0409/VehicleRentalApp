class HomeController < ApplicationController
  def index
    @all_vehicles = Vehicle.order(:brand,:year,:model).reject {|vehicle| vehicle.is_rented==true}
  end

  
end
