class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories, through: :bookmarks

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  # The rating of a recipe must be a value between 0 and 5.
  validates :rating, presence: true, inclusion: { in: 0..5 }
end
