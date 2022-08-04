class Space < ApplicationRecord

  has_many :favorites
  has_many :reviews

  scope :published, -> () {where(published: true)}
  has_one_attached :image

end
