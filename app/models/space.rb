class Space < ApplicationRecord
  scope :published, -> () {where(published: true)}
  has_one_attached :image
end
