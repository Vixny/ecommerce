json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :middle_name, :last_name, :dob, :phone, :dr_name, :dr_phone, :dr_fax, :shipping_address, :billing_address, :billing_info, :smoker, :drinker, :eye_disorders, :emotional_mood_disorders, :heart_disease, :high_lipids, :neurological_disorders, :kidney_disorders, :stomach_disorders, :diabetes, :other_disorders, :drug_alergies
  json.url customer_url(customer, format: :json)
end
