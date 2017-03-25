class Recipe < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
end