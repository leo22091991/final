json.extract! sale_line, :id, :quantity, :sale_id, :product_id, :created_at, :updated_at
json.url sale_line_url(sale_line, format: :json)
