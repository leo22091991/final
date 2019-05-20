class AddQuantityToPurchaseLines < ActiveRecord::Migration[5.2]
  def change
    add_column :purchase_lines, :quantity, :int
  end
end
