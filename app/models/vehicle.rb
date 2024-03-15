class Vehicle < ApplicationRecord
    has_many :rental_agreements
    has_many :users, through: :rental_agreements
end
