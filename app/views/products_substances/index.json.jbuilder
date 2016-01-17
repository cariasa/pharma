json.array!(@products_substances) do |products_substance|
  json.extract! products_substance, :id, :product_id, :substance_id, :concentration, :units
  json.url products_substance_url(products_substance, format: :json)
end
