json.array!(@combination_doses) do |combination_dose|
  json.extract! combination_dose, :id, :combination_doses_id, :combination_dose_id, :combination_dose_name, :status
  json.url combination_dose_url(combination_dose, format: :json)
end
