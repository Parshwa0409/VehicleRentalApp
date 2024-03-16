class RentalAgreementController < ApplicationController
  def new
    @agreement = RentalAgreement.new()
    @payment = Payment.new()
  end

  def create
    vehicle = Vehicle.find_by(id:session[:vehicle_id])
    user = User.find_by(id:session[:user_id])

    data = get_params()
    start_date = data[:start_date].to_date()
    end_date = data[:end_date].to_date()
    cardholder_name = data[:cardholder_name]
    card_number = data[:card_number]
    cvv = data[:cvv]
    expiry_date = data[:expity_date].to_date()
    total_cost = (end_date - start_date).to_i() * vehicle.price_per_day


    @agreement = RentalAgreement.create(
      user:user, 
      vehicle:vehicle, 
      start_date:start_date, 
      end_date:end_date,
      total_cost:total_cost,
      active:true
    )

    @payment = @agreement.create_payment(
      cardholder_name:cardholder_name,
      card_number:card_number,
      cvv:cvv,
      expiry_date:expiry_date
    )

    if @agreement.errors.any? || @payment.errors.any?
      # if payment goes_wrong then delete the rental_agreement that was created & restart!!! FIND BETTER WAY TO DO IT
      @agreement.destroy if !(@agreement[:id].nil?)
      render :new
    else
      # update_column will help you skip the validations, when updating or else it runs through every validation.
      user.update_column(:has_rented, true)
      vehicle.update_column(:is_rented, true)
      redirect_to active_agreement_path
    end

    # THIS IS HOW PARAMS ARE STRUCTURED, we need to extract data & creaet a rental agreement.
    # {"authenticity_token"=>"UZ2YfpaYcKi7U-B_uXo-5IKahxaT1iVEVOSHownepeeHsLhz5xS2c7fJCzimdXLPh4c7GD9K0HRxVOa1ecAJLQ", 
    # "start_date"=>"", 
    # "card_number"=>"", 
    # "cvv"=>"", 
    # "expity_date"=>"", 
    # "commit"=>"Finish / Complete Agreement", "controller"=>"rental_agreement", "action"=>"create"} #
  end

  def detail
    @agreement = RentalAgreement.find_by(id: params[:id])
    @payment_details = @agreement.payment if !@agreement.nil?
  end

  private 
  def get_params
    return params.permit(:start_date,:end_date,:cardholder_name,:card_number,:cvv,:expity_date)
  end
end
