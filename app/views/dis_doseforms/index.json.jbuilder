json.array!(@dis_doseforms) do |dis_doseform|
  json.extract! dis_doseform, :id, :id, :name, :abbrev, :status_id
  json.url dis_doseform_url(dis_doseform, format: :json)
end
