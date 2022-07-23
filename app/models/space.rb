class Space < ApplicationRecord

  has_many :favorites

  scope :published, -> () {where(published: true)}
  has_one_attached :image

end
