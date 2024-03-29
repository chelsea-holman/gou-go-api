json.reviews do
  json.array! @reviews do |review|
    json.extract! review, :comment, :rating, :date, :user_id, :space_id, :created_at
    json.image review&.image&.service_url #if review.image&.attached?
    json.user review.user
  end
end
