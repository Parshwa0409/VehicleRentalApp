class SessionController < ApplicationController

  def create
    user = User.find_by(email:get_params[:email])

    if user.present? && user.authenticate(get_params[:password])
      session[:user_id ]= user.id
      redirect_to root_path
    else
      redirect_to root_path, alert: "INVALID PASSWORD OR EMAIL-ID" 
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private
  def get_params
    return params.require(:user).permit(:email,:password)
  end
end
