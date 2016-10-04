json.array!(@dis_brandnames) do |dis_brandname|
  json.extract! dis_brandname, :id, :id, :name, :release_status_id, :status_id
  json.url dis_brandname_url(dis_brandname, format: :json)
end
