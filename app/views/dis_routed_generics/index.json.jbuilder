json.array!(@dis_routed_generics) do |dis_routed_generic|
  json.extract! dis_routed_generic, :id, :id, :name, :generic_id, :route_id, :is_combination, :pregnancy_category_id, :release_status_id, :status_id
  json.url dis_routed_generic_url(dis_routed_generic, format: :json)
end
