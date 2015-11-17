class Restaurant < ActiveRecord::Base
	belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
	has_many :tables
	has_many :reservations, through: :tables
	has_many :users, through: :reservations
end
