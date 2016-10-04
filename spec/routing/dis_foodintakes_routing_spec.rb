require "rails_helper"

RSpec.describe DisFoodintakesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_foodintakes").to route_to("dis_foodintakes#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_foodintakes/new").to route_to("dis_foodintakes#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_foodintakes/1").to route_to("dis_foodintakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_foodintakes/1/edit").to route_to("dis_foodintakes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_foodintakes").to route_to("dis_foodintakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_foodintakes/1").to route_to("dis_foodintakes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_foodintakes/1").to route_to("dis_foodintakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_foodintakes/1").to route_to("dis_foodintakes#destroy", :id => "1")
    end

  end
end
