class Review < ApplicationRecord
  belongs_to :user
  belongs_to :space

  has_one_attached :image

  def review_user
    @review_user = User.find_by(id: review.user_id)
  end
end
