json.array!(@dis_ingredients) do |dis_ingredient|
  json.extract! dis_ingredient, :id, :id, :name, :status_id
  json.url dis_ingredient_url(dis_ingredient, format: :json)
end
