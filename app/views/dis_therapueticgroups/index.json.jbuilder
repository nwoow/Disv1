json.array!(@dis_therapueticgroups) do |dis_therapueticgroup|
  json.extract! dis_therapueticgroup, :id, :id, :name, :system_id, :status_id
  json.url dis_therapueticgroup_url(dis_therapueticgroup, format: :json)
end
