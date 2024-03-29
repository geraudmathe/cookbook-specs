class Ingredient < ActiveRecord::Base
  attr_accessible :image, :name, :recipe_ids

  has_many :ingredients_recipes, dependent: :destroy
  has_many :recipes, through: :ingredients_recipes

end
