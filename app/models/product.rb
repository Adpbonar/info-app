class Product < ApplicationRecord
	validates :name, :description, :cost, presence: true	
end
