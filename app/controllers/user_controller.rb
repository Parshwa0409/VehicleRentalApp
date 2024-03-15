class UserController < ApplicationController

    def check_if_user_can_rent
        user = User.find_by(id:session[:user_id])
        if user.has_rented
            flash[:alert] = "You have already rented a car you cannot rent more than one car at the same time."
            redirect_to root_path
        end
    end
end
