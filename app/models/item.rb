class Item < ApplicationRecord
	has_many :discs
	has_many :songs, through: :discs
	accepts_nested_attributes_for :discs
end
