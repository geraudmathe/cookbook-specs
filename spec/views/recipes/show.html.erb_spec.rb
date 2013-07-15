require 'spec_helper'

describe "recipes/show.html.erb" do
  describe "rendering recipe" do
    before do
      assign :recipe,  Recipe.create(name: "recipe", image: "recipe-pic.jpg")}
      render
    end

    it "should have correct title" do
      rendered.should have_selector "h1", text: "Listing recipes"
    end

    it "should contain 3 rows in the #recipes_table" do
      rendered.should have_selector "#recipes_table tbody tr", count:3
    end
  end
end
