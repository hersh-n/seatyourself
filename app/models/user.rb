class User < ActiveRecord::Base
	has_secure_password

	has_one :owned_restaurant, class_name: 'Restaurant', foreign_key: 'user_id'
	has_many :reservations
	has_many :tables, through: :reservations
	has_many :restaurants, through: :tables


end
