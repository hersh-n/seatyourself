class Restaurant < ActiveRecord::Base

	belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
	has_many :tables
	has_many :reservations, through: :tables
	has_many :users, through: :reservations

	validates :name, presence: true


	def is_available?(party_size, time)
		self.get_current_capacity(time) >= party_size
	end

	def get_current_capacity(time)
		available_tables(time).sum(:capacity)
	end

	def find_tables_for_party(party_size, time)
		(1..available_tables(time).length).each do |i|
			available_tables(time).combination(i).to_a.each do |combination|
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

	def book_tables(table_combination, reservation)
		table_combination.each do |table|
			table.book(reservation)
			table.save
		end
	end

	private
	def available_tables(time)
		self.tables.order(capacity: :asc).where(booked: false, timeslot: time)
	end
end
