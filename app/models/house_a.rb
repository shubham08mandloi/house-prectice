class HouseA < ApplicationRecord
	has_many :members
	has_many :rooms
end
