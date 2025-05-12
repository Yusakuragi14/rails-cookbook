class Category < ApplicationRecord
  has_many :bookmarks
  has_many :recipes, through: :bookmarks

  validates :name, presence: true
end
