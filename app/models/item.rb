class Item < ApplicationRecord
	has_many :discs
	accepts_nested_attributes_for :discs
end

