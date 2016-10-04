json.array!(@dis_datasources) do |dis_datasource|
  json.extract! dis_datasource, :id, :name
  json.url dis_datasource_url(dis_datasource, format: :json)
end
