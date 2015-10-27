json.array!(@medications) do |medication|
  json.extract! medication, :id, :medication, :category_id, :brand_id, :description
  json.url medication_url(medication, format: :json)
end
