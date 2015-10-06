json.array!(@persontypes) do |persontype|
  json.extract! persontype, :id, :persontype
  json.url persontype_url(persontype, format: :json)
end
