class Table < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :reservation
	has_one :user, through: :reservation
end
