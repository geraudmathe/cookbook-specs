class Recipe < ActiveRecord::Base
  attr_accessible :image, :name, :ingredient_ids

  has_and_belongs_to_many :ingredients

end
