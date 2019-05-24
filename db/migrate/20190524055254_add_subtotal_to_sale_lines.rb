class AddSubtotalToSaleLines < ActiveRecord::Migration[5.2]
  def change
    add_column :sale_lines, :subtotal, :float
  end
end
