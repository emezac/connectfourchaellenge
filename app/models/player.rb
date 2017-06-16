class Player < ApplicationRecord
	validates :user_name, presence: true
	has_many :moves
	has_many :games, through: :moves
end
