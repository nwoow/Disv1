json.array!(@dis_systems) do |dis_system|
  json.extract! dis_system, :id, :id, :name, :status_id
  json.url dis_system_url(dis_system, format: :json)
end
