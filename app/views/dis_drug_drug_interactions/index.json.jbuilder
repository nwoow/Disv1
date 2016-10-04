json.array!(@dis_drug_drug_interactions) do |dis_drug_drug_interaction|
  json.extract! dis_drug_drug_interaction, :id, :generic_id1, :generic_id2, :description, :severity, :status_id, :datasource_id
  json.url dis_drug_drug_interaction_url(dis_drug_drug_interaction, format: :json)
end
