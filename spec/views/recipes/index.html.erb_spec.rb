require 'spec_helper'

describe "recipes/index.html.erb" do
  describe "with three recipes" do
    before do
      assign :recipes, 3.times.map{ |t| Recipe.create(name: "recipe-#{t}", image: "recipe-pic-#{t}.jpg") }
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
