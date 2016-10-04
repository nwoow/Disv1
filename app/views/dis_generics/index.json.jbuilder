json.array!(@dis_generics) do |dis_generic|
  json.extract! dis_generic, :id, :name, :is_combination, :rxcui, :status_id, :food_id, :hepatic_id, :renal_imp_id, :release_status_id, :is_essential
  json.url dis_generic_url(dis_generic, format: :json)
end
