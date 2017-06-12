class Player < ApplicationRecord
	validates :user_name, presence: true
end
