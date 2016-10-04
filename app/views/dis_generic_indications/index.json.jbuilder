json.array!(@dis_generic_indications) do |dis_generic_indication|
  json.extract! dis_generic_indication, :id, :id, :generic_id, :status_id, :indication_id
  json.url dis_generic_indication_url(dis_generic_indication, format: :json)
end
