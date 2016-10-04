json.array!(@dis_additive_frequencies) do |dis_additive_frequency|
  json.extract! dis_additive_frequency, :id, :name, :frequency_value, :status_id
  json.url dis_additive_frequency_url(dis_additive_frequency, format: :json)
end
