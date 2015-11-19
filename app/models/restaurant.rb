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

	def find_tables_for_party(party_size, time)
		available_tables = self.tables.order(capacity: :asc).where(booked: false, timeslot: time)
		(1..available_tables.length).each do |i|
			available_tables.combination(i).to_a.each do |combination|
				combination_capacity = 0
				combination.each do |table|
					combination_capacity += table.capacity
				end
				if combination_capacity >= party_size
					return combination
				end
			end
		end
	end

	def book_tables(table_combination, reservation_id)
		table_combination.each do |table|
			table.book(reservation_id)
		end
	end
end
