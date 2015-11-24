class User < ActiveRecord::Base
	has_secure_password

	has_one :owned_restaurant, class_name: 'Restaurant', foreign_key: 'user_id'
	has_many :reservations

  validates :email, presence: true
end
