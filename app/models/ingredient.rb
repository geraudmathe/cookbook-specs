class Ingredient < ActiveRecord::Base
  attr_accessible :image, :name

  has_and_belongs_to_many :recipes

end
