json.extract! purchase_line, :id, :subtotal, :product_id, :purchase_id, :created_at, :updated_at
json.url purchase_line_url(purchase_line, format: :json)
