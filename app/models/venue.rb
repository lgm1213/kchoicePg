class Venue < ApplicationRecord
validates :name , presence: true
validates :address, presence: true
validates :city, presence: true
validates :state, presence: true
validates :zip, presence: true, length: { maximum: 5 }
validates :phone, presence: true, length:{ maximum: 13 }
has_many :meals
	
end
