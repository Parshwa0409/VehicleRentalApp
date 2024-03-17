class HomeController < ApplicationController
  def index

    puts
    p session[:user_id]
    puts


    @all_vehicles = Vehicle.order(:brand,:year,:model).reject {|vehicle| vehicle.is_rented==true}
  end
end
