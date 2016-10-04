json.array!(@combination_contents) do |combination_content|
  json.extract! combination_content, :id, :combination_contents_id, :combination_generic_id, :constituent_generic_id, :constituent_strength, :uom_id, :combination_dose_id, :data_source_id, :status
  json.url combination_content_url(combination_content, format: :json)
end
