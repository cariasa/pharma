json.array!(@products) do |product|
  json.extract! product, :id, :product, :category_id, :brand_id, :presentation_id
  json.url product_url(product, format: :json)
end
