class Reservation < ActiveRecord::Base
	belongs_to :user
  belongs_to :restaurant
	has_many :tables, through: :restaurant

  validates :party_size, presence: true, numericality: {only_integer: true}
end
