require "rails_helper"

RSpec.describe DisAdditiveFrequenciesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_additive_frequencies").to route_to("dis_additive_frequencies#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_additive_frequencies/new").to route_to("dis_additive_frequencies#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_additive_frequencies/1").to route_to("dis_additive_frequencies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_additive_frequencies/1/edit").to route_to("dis_additive_frequencies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_additive_frequencies").to route_to("dis_additive_frequencies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_additive_frequencies/1").to route_to("dis_additive_frequencies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_additive_frequencies/1").to route_to("dis_additive_frequencies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_additive_frequencies/1").to route_to("dis_additive_frequencies#destroy", :id => "1")
    end

  end
end
