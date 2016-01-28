json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctors_name, :clinic_name, :clinic_address, :clinic_phone, :doctors_direct_phone, :fax_number, :email
  json.url doctor_url(doctor, format: :json)
end
