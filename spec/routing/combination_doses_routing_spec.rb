require "rails_helper"

RSpec.describe CombinationDosesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/combination_doses").to route_to("combination_doses#index")
    end

    it "routes to #new" do
      expect(:get => "/combination_doses/new").to route_to("combination_doses#new")
    end

    it "routes to #show" do
      expect(:get => "/combination_doses/1").to route_to("combination_doses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/combination_doses/1/edit").to route_to("combination_doses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/combination_doses").to route_to("combination_doses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/combination_doses/1").to route_to("combination_doses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/combination_doses/1").to route_to("combination_doses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/combination_doses/1").to route_to("combination_doses#destroy", :id => "1")
    end

  end
end
