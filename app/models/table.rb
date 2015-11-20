class Table < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :reservation
	has_one :user, through: :reservation

  validates :capacity, presence: true, numericality: {only_integer: true}

	def book(reservation_id)
		self.booked = true
		self.reservation_id = reservation_id
	end
end