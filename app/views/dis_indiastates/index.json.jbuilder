json.array!(@dis_indiastates) do |dis_indiastate|
  json.extract! dis_indiastate, :id, :id, :name, :abbrev
  json.url dis_indiastate_url(dis_indiastate, format: :json)
end
