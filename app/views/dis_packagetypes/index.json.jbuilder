json.array!(@dis_packagetypes) do |dis_packagetype|
  json.extract! dis_packagetype, :id, :id, :name, :status_id
  json.url dis_packagetype_url(dis_packagetype, format: :json)
end
