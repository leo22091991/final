class Product < ApplicationRecord
  belongs_to :category
  has_many :purchase_lines
end
