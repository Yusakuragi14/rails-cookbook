class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe_id, presence: true
  validates :comment, presence: true, length: { maximum: 500 }
end
