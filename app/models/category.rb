class Category < ApplicationRecord
	has_and_belongs_to_many :products
	has_many :categories, as: :subcategories
end
