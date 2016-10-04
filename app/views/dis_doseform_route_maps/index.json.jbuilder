json.array!(@dis_doseform_route_maps) do |dis_doseform_route_map|
  json.extract! dis_doseform_route_map, :id, :doseform_id, :route_id, :status_id
  json.url dis_doseform_route_map_url(dis_doseform_route_map, format: :json)
end
