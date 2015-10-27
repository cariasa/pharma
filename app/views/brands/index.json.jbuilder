json.array!(@brands) do |brand|
  json.extract! brand, :id, :brand, :person_id
  json.url brand_url(brand, format: :json)
end
