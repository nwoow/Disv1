json.array!(@dis_durations) do |dis_duration|
  json.extract! dis_duration, :id, :id, :description, :status_id
  json.url dis_duration_url(dis_duration, format: :json)
end
