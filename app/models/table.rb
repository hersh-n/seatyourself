class Table < ActiveRecord::Base
	belongs_to :restaurant
	has_one :reservation
	has_one :user, through: :reservation
end
