class CreatePurchaseLines < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_lines do |t|
      t.float :subtotal
      t.references :product, foreign_key: true
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
