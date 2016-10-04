json.array!(@dis_doseunit_convertions) do |dis_doseunit_convertion|
  json.extract! dis_doseunit_convertion, :id, :id, :from_doseunit_id, :to_doseunit_id, :conv_factor, :status_id
  json.url dis_doseunit_convertion_url(dis_doseunit_convertion, format: :json)
end
