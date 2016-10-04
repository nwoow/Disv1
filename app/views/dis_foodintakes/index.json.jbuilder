json.array!(@dis_foodintakes) do |dis_foodintake|
  json.extract! dis_foodintake, :id, :id, :description, :status_id
  json.url dis_foodintake_url(dis_foodintake, format: :json)
end
