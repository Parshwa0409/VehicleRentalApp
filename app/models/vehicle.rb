class Vehicle < ApplicationRecord
    has_many :rental_agreements, dependent: :destroy
    has_many :users, through: :rental_agreements
end
