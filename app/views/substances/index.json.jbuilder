json.array!(@substances) do |substance|
  json.extract! substance, :id, :substance, :description
  json.url substance_url(substance, format: :json)
end
