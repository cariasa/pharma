json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :clinic, :address, :city_id
  json.url clinic_url(clinic, format: :json)
end
