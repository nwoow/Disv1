json.array!(@dis_doseform_doseunit_links) do |dis_doseform_doseunit_link|
  json.extract! dis_doseform_doseunit_link, :id, :doseform_id, :doseunit_id, :is_default, :status_id, :datasource_id
  json.url dis_doseform_doseunit_link_url(dis_doseform_doseunit_link, format: :json)
end
