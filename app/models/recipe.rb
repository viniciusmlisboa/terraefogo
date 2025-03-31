class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true

  has_one_attached :featured_image
  has_rich_text :description
  validates :name, presence: true
end
