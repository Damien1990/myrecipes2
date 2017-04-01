class Recipe < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
  belongs_to :chef
  validates :chef_id, presence: true
  default_scope -> { order(updated_at: :desc) }
  
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end