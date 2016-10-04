require "rails_helper"

RSpec.describe CombinationContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/combination_contents").to route_to("combination_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/combination_contents/new").to route_to("combination_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/combination_contents/1").to route_to("combination_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/combination_contents/1/edit").to route_to("combination_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/combination_contents").to route_to("combination_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/combination_contents/1").to route_to("combination_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/combination_contents/1").to route_to("combination_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/combination_contents/1").to route_to("combination_contents#destroy", :id => "1")
    end

  end
end
