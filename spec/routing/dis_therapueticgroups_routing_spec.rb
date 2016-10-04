require "rails_helper"

RSpec.describe DisTherapueticgroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_therapueticgroups").to route_to("dis_therapueticgroups#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_therapueticgroups/new").to route_to("dis_therapueticgroups#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_therapueticgroups/1").to route_to("dis_therapueticgroups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_therapueticgroups/1/edit").to route_to("dis_therapueticgroups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_therapueticgroups").to route_to("dis_therapueticgroups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_therapueticgroups/1").to route_to("dis_therapueticgroups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_therapueticgroups/1").to route_to("dis_therapueticgroups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_therapueticgroups/1").to route_to("dis_therapueticgroups#destroy", :id => "1")
    end

  end
end
