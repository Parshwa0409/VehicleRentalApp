class HomeController < ApplicationController
  def index
    session[:user_id] = User.first.id

    @all_vehicles = Vehicle.order(:brand,:model,:year).reject {|vehicle| vehicle.is_rented==true}
  end

  
end
