class Product < ApplicationRecord
  belongs_to :category
  has_many :purchase_lines
  has_many :sale_lines

  validates :name, presence: :true, length: {in: 2..40}, uniqueness: true
  validates :price, presence: :true, numericality: true
  validates :description, presence: :true, length: {maximum: 150}
end
