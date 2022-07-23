json.spaces do
  json.array! @spaces do |space|
    json.extract! space, :id, :name, :address, :category, :access, :features
    json.image space.image.service_url if space.image.attached?
  end
end
