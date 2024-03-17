class VehicleController < ApplicationController
  def search
  end

  def search_vehicle
    brand = get_search_params[:brand]
    model = get_search_params[:model]

    @all_vehicles = []

    if !brand.empty? && !model.empty?
      @all_vehicles =  Vehicle.where(brand:brand, model:model)
    elsif !model.empty?
      @all_vehicles =  Vehicle.where(model:model)
    elsif !brand.empty?
      @all_vehicles =  Vehicle.where(brand:brand)
    else
      flash.now[:alert] = "BOTH THE FIELDS CANNOT BE EMPTY !!!"
    end
    puts
    puts
    puts
    puts
    puts
    p @all_vehicles
    puts
    puts
    puts
    puts
    puts
    render :search
  end

  private
  def get_search_params
    return params.require(:search).permit(:brand, :model)
  end
end
