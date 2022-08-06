class Space < ApplicationRecord

  has_many :favorites
  has_many :reviews

  scope :published, -> () {where(published: true)}
  has_one_attached :image

  def review_avg
    reviews.pluck(:rating).sum.fdiv(reviews.count)
  end

end
