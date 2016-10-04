json.array!(@dis_duplicate_therapies) do |dis_duplicate_therapy|
  json.extract! dis_duplicate_therapy, :id, :generic_id1, :generic_id2, :status_id, :datasource_id
  json.url dis_duplicate_therapy_url(dis_duplicate_therapy, format: :json)
end
