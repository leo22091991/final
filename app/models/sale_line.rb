class SaleLine < ApplicationRecord
  belongs_to :sale
  belongs_to :product

  before_validation :calcular_subtotal

  def calcular_subtotal
  	self.subtotal = quantity * product.price
  end


end
