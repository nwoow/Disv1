json.array!(@dis_manufacturers) do |dis_manufacturer|
  json.extract! dis_manufacturer, :id, :id, :name, :address1, :address2, :city, :state_id, :pin, :phone, :fax, :email, :website, :mobilephoe, :abbrev, :phone2, :release_status_id, :status_id
  json.url dis_manufacturer_url(dis_manufacturer, format: :json)
end
