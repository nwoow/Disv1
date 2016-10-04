json.array!(@dis_generic_monographs) do |dis_generic_monograph|
  json.extract! dis_generic_monograph, :id, :generic_id, :dose, :contraindication, :precaution, :adverse_effect, :storage, :datasource_id, :status_id
  json.url dis_generic_monograph_url(dis_generic_monograph, format: :json)
end
