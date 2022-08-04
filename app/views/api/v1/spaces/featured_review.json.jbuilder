json.featured_review do
  json.extract! @review, :comment, :rating
end
