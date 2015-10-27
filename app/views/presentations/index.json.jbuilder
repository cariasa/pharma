json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :presentation, :concentration, :units
  json.url presentation_url(presentation, format: :json)
end
