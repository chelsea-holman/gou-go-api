class Rating < ApplicationRecord

has_many :reviews

def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
     Spaces.create! row.to_hash
    end
  end

def avg_rating
  review.average(:rating)
end
