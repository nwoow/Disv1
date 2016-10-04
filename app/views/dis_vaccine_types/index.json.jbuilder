json.array!(@dis_vaccine_types) do |dis_vaccine_type|
  json.extract! dis_vaccine_type, :id, :name, :description, :has_packagedrug, :status_id, :datasource_id
  json.url dis_vaccine_type_url(dis_vaccine_type, format: :json)
end
