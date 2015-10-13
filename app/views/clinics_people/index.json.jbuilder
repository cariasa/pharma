json.array!(@clinics_people) do |clinics_person|
  json.extract! clinics_person, :id, :clinic_id, :person_id
  json.url clinics_person_url(clinics_person, format: :json)
end
