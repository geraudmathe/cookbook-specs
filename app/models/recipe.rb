class Recipe < ActiveRecord::Base
  attr_accessible :image, :name, :ingredients_recipes_attributes

  has_many :ingredients_recipes, dependent: :destroy
  has_many :ingredients, through: :ingredients_recipes

  accepts_nested_attributes_for :ingredients_recipes, allow_destroy: true

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
end
