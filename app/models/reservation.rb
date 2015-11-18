class Reservation < ActiveRecord::Base
	belongs_to :user
	has_many :tables
	has_one :restaurant, through: :table
end
