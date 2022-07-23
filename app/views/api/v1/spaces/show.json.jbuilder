json.space do
  json.extract! @space, :id, :name, :address, :category, :access, :features
  # p @space
  json.image @space.image.service_url if @space.image.attached?
end
