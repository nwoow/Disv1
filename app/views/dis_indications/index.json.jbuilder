json.array!(@dis_indications) do |dis_indication|
  json.extract! dis_indication, :id, :id, :description, :status_id
  json.url dis_indication_url(dis_indication, format: :json)
end
