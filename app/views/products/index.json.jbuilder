json.array!(@products) do |product|
  json.extract! product, :id, :medication_id, :presentation_id, :substance_id
  json.url product_url(product, format: :json)
end
