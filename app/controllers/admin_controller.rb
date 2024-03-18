class AdminController < ApplicationController
  def all_vehicles
  end

  def new_vehicle
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
