class Category < ApplicationRecord
	has_many :products

	validates :decription, presence: :true, uniqueness: :true, length: {maximum: 35} 
end
