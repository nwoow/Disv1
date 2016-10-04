json.array!(@dis_pregnancy_categories) do |dis_pregnancy_category|
  json.extract! dis_pregnancy_category, :id, :id, :name, :description, :status_id
  json.url dis_pregnancy_category_url(dis_pregnancy_category, format: :json)
end
