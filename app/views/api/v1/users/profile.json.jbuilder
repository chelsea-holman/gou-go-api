json.spaces do
  json.array! @spaces do |space|
    json.extract! space, :id, :name, :address, :category, :image, :access, :features
  end
end
