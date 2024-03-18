class AdminController < ApplicationController
  def all_vehicles
    @all_vehicles = Vehicle.order(:brand,:year,:model).reject {|vehicle| vehicle.is_rented==true}
  end

  def new_vehicle
  end

  def create_new_vehicle
    vehicle_info = params.require(:vehicle)
    p vehicle_info

    vehicle = Vehicle.create(brand:vehicle_info[:brand],model:vehicle_info[:model],year:vehicle_info[:year],price_per_day:vehicle_info[:price_perday])

    if vehicle.save()
      flash.now[:notice] = "NEW VEHICLE ADDED TO THE DATABASE!"
    else
      flash.now[:alert] = "ERROR: VEHICLE NOT ADDED TO THE DATABASE!"
    end

    render :new_vehicle
  end

  def all_user
  end

  
  def show_user
  end
  
  def view_user
  end
  
  def search_user
  end

  def search_from_users
    user_email = params.require(:search_user)[:email]
    @user = User.find_by(email:user_email)

    if @user.nil?
      flash.now[:alert]="No user with the specified email has an account registerd for our services!!!"
    end

    render :search_user
  end

  def rental_insights
  end
end
