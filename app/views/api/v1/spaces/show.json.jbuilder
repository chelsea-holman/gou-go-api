json.space do

  json.extract! @space, :id, :name, :address, :category, :access, :features
  json.recommended_spaces @recommended_spaces do |space|
    json.extract! space, :id, :name, :address, :category, :access, :features
    json.image space.image.service_url if @space.image.attached?
  end
  json.favorited @favorited
  json.image @space.image.service_url if @space.image.attached?

end
