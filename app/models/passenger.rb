class Passenger < ApplicationRecord
    has_many :reservations 
    has_many :routes, through: :reservations 
    
end
