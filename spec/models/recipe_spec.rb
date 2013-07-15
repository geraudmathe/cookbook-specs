require "spec_helper"
describe Recipe do
  describe "validations" do
    it{ should validate_presence_of :name }
    it{ should validate_uniqueness_of :name }
    it{ should validate_presence_of :image }
  end

  describe "relations" do
    it{ should have_many :ingredients_recipes }
  end
end