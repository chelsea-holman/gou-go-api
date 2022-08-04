class Review < ApplicationRecord
  belongs_to :user
  belongs_to :space

  has_one_attached :image
end
