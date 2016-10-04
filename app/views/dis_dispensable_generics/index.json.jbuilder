json.array!(@dis_dispensable_generics) do |dis_dispensable_generic|
  json.extract! dis_dispensable_generic, :id, :routed_doseform_generic_id, :strength, :strength_doseunit_id, :per_strength, :per_doseunit_id, :name, :release_status_id, :status_id, :datasource_id
  json.url dis_dispensable_generic_url(dis_dispensable_generic, format: :json)
end
