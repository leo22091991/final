class Purchase < ApplicationRecord
	has_many :purchase_lines
	has_many :products, through: :purchase_lines, dependent: :destroy

	before_create :calcular_monto
	accepts_nested_attributes_for :purchase_lines

	def calcular_monto
		lines = self.purchase_lines
		self.monto = 0
		lines.each do |li|
			self.monto = self.monto + li.subtotal
		end
	end
end
