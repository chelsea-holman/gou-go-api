class User < ApplicationRecord
  has_many :favorites
  has_many :reviews
  has_many :favorite_spaces, through: :favorites, source: :space

  def favorite(space)
    Favorite.create(user: self, space: space)
  end

  def unfavorite(space)
    Favorite.find_by(user: self, space: space).destroy
  end

  def favorited?(space)
    Favorite.find_by(user: self, space: space).present?
  end
end
