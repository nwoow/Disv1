json.array!(@dis_generic_hepatic_imps) do |dis_generic_hepatic_imp|
  json.extract! dis_generic_hepatic_imp, :id, :generic_id, :warning, :description, :status_id, :datasource_id
  json.url dis_generic_hepatic_imp_url(dis_generic_hepatic_imp, format: :json)
end
