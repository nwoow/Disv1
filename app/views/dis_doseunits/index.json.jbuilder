json.array!(@dis_doseunits) do |dis_doseunit|
  json.extract! dis_doseunit, :id, :id, :name, :abbrev, :dosetype_id, :status_id
  json.url dis_doseunit_url(dis_doseunit, format: :json)
end
