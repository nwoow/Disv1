json.array!(@dis_routes) do |dis_route|
  json.extract! dis_route, :id, :id, :name, :abbrev, :adverb, :status_id
  json.url dis_route_url(dis_route, format: :json)
end
