json.array!(@dis_generic_lactations) do |dis_generic_lactation|
  json.extract! dis_generic_lactation, :id, :generic_id, :description, :datasource_id, :status_id
  json.url dis_generic_lactation_url(dis_generic_lactation, format: :json)
end
