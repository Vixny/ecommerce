json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :generic_name, :int_name, :prescription_required, :quantity, :price, :manufacturer, :origin, :is_pack_size_splittable
  json.url medication_url(medication, format: :json)
end
