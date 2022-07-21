json.space do
  json.extract! @space, :id, :name, :address, :category, :image, :access, :features
  # p @space
end
