json.array!(@people) do |person|
  json.extract! person, :id, :fullname, :address, :telephone, :email, :birthday, :idperson, :persontype_id, :city_id
  json.url person_url(person, format: :json)
end
