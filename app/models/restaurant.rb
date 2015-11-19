class Restaurant < ActiveRecord::Base
	belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
	has_many :tables
	has_many :reservations, through: :tables
	has_many :users, through: :reservations

	def get_current_capacity(time)
		capacity = 0
		available_tables = self.tables.where(booked: false, timeslot: time)
		available_tables.each do |table|
			capacity += table.capacity
		end
		return capacity
	end
end
