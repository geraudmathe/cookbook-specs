require 'spec_helper'

describe RecipesController do

  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
  end

  describe "GET 'show'" do
    let(:recipe) { Recipe.create name: "recipe", image: "recipe.jpg" }

    before(:each) do
      get :show, id: recipe.id
    end

    it "returns http success" do
      response.should be_success
    end

    it "assigns the right recipe to @recipe" do
      assigns[:recipe].should eq recipe
    end

    it "render show template" do
      should render_template(:show)
    end
  end

end
