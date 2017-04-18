json.extract! item, :id, :title, :description, :price, :purchase_price, :amount, :created_at, :updated_at
json.url item_url(item, format: :json)
