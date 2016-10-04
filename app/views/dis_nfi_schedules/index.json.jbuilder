json.array!(@dis_nfi_schedules) do |dis_nfi_schedule|
  json.extract! dis_nfi_schedule, :id, :name, :description, :datasource_id, :status_id
  json.url dis_nfi_schedule_url(dis_nfi_schedule, format: :json)
end
