json.reviews do
  json.array! @reviews do |review|
    json.extract! review, :comment, :rating, :date, :user_id, :space_id
    json.image review&.image&.service_url #if review.image&.attached?
  end
end
