class PurchaseLine < ApplicationRecord
  belongs_to :product
  belongs_to :purchase

  before_validation :calcular_subtotal

  def calcular_subtotal
  	self.subtotal = product.price * quantity
  end
end
