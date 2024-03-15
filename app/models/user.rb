class User < ApplicationRecord
    has_many :rental_agreements
    has_many :vehicles, through: :rental_agreements  
end
