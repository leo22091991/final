class Sale < ApplicationRecord
	has_many :sale_lines
	has_many :products, through: :sale_lines, dependent: :destroy

	accepts_nested_attributes_for :sale_lines

	before_create :calcular_total


	def calcular_total
		lines = self.sale_lines
		self.total = 0
		lines.each do |li|
			self.total = self.total + li.subtotal
		end
	end
end

