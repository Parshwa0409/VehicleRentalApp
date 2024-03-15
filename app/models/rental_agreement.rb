class RentalAgreement < ApplicationRecord
    has_one :payment

    belongs_to :users 
    belongs_to :vehicles
end
