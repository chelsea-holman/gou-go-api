json.space do

  json.extract! @space, :id, :name, :address, :category, :access, :features, :sub_category
  json.recommended_spaces @recommended_spaces do |space|
    json.extract! space, :id, :name, :address, :category, :access, :features, :sub_category
    json.image space.image.service_url if space.image.attached?
  end
  json.favorited @favorited
  json.image @space.image.service_url if @space.image.attached?
  json.featured_review @review
  json.review_count @review_count
end
