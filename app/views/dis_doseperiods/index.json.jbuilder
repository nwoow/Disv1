json.array!(@dis_doseperiods) do |dis_doseperiod|
  json.extract! dis_doseperiod, :id, :name, :is_common, :abbrev, :status_id, :datasource_id
  json.url dis_doseperiod_url(dis_doseperiod, format: :json)
end
