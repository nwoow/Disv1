json.array!(@dis_generic_contraceptive_interactions) do |dis_generic_contraceptive_interaction|
  json.extract! dis_generic_contraceptive_interaction, :id, :generic_id, :description, :datasource_id, :statud_id
  json.url dis_generic_contraceptive_interaction_url(dis_generic_contraceptive_interaction, format: :json)
end
