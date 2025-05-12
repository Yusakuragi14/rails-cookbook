class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, uniqueness: { scope: :category, message: "This recipe is already bookmarked in this category" }
  validates :comment, presence: true, length: { minimum: 6 }
end
