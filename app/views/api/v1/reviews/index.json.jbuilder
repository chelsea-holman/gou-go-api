json.reviews do
  json.array! @reviews do |review|
    json.extract! review, :comment, :rating, :date, :user_id, :space_id, :image
  end
end
