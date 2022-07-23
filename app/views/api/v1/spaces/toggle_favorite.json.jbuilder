json.space do
  json.extract! @space, :id, :name, :address, :category, :image, :access, :features
  json.recommended_spaces @recommended_spaces do |space|
    json.extract! space, :id, :name, :address, :category, :image, :access, :features
  end
  json.favorited @favorited
end
