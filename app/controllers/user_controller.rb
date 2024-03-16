class UserController < ApplicationController

    def check_if_user_can_rent
        user = User.find_by(id:session[:user_id])

        if user.has_rented
            flash[:alert] = "You've already rented a car. Please note that you can only rent one car at a time."
            redirect_to root_path
        else
            session[:vehicle_id]=params[:id]
            redirect_to new_rental_agreement_path
        end
    end

    def active
        user = User.find_by(id:session[:user_id])
        active_agreement = user.rental_agreements.find_by(active: true)
        @vehicle =  active_agreement.vehicle if !(active_agreement.nil?)
    end

    def return_car
        user = User.find_by(id:session[:user_id])
        active_agreement = user.rental_agreements.find_by(active: true)
        vehicle =  active_agreement.vehicle

        vehicle.update_column(:is_rented, false)
        user.update_column(:has_rented, false)
        active_agreement.update_column(:active, false)

        redirect_to root_path
    end

    def all_agreements
        user = User.find_by(id:session[:user_id])
        @history = user.rental_agreements if !user.nil?
    end

    def profile
        @user = User.find_by(id:session[:user_id])
    end

end
