json.array!(@dis_statuses) do |dis_status|
  json.extract! dis_status, :id, :name
  json.url dis_status_url(dis_status, format: :json)
end
