json.array!(@dis_routed_doseform_generics) do |dis_routed_doseform_generic|
  json.extract! dis_routed_doseform_generic, :id, :generic_id, :rtd_gen_id, :route_id, :doseform_id, :name, :monograph_id, :status_id, :release_status_id, :is_combination
  json.url dis_routed_doseform_generic_url(dis_routed_doseform_generic, format: :json)
end
