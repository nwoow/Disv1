json.array!(@dis_generic_alcohol_interactions) do |dis_generic_alcohol_interaction|
  json.extract! dis_generic_alcohol_interaction, :id, :generic_id, :alcohol_interaction_id, :status_id, :datasource_id
  json.url dis_generic_alcohol_interaction_url(dis_generic_alcohol_interaction, format: :json)
end
