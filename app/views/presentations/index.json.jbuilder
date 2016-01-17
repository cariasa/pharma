json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :presentation, :description
  json.url presentation_url(presentation, format: :json)
end
