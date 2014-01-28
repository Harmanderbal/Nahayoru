json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :address, :tel, :category
  json.url shop_url(shop, format: :json)
end
