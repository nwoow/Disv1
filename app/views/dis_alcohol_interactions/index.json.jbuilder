json.array!(@dis_alcohol_interactions) do |dis_alcohol_interaction|
  json.extract! dis_alcohol_interaction, :id, :name, :description, :datasource_id
  json.url dis_alcohol_interaction_url(dis_alcohol_interaction, format: :json)
end
