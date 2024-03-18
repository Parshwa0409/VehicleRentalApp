class HomeController < ApplicationController
  def index
    @user = User.find_by(id:session[:user_id])
    @all_vehicles = Vehicle.order(:brand,:year,:model).reject {|vehicle| vehicle.is_rented==true}
  end
end
