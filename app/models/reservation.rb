class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :table
	has_one :restaurant, through: :table
end
