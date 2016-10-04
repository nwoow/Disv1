require "rails_helper"

RSpec.describe DisPackagetypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_packagetypes").to route_to("dis_packagetypes#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_packagetypes/new").to route_to("dis_packagetypes#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_packagetypes/1").to route_to("dis_packagetypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_packagetypes/1/edit").to route_to("dis_packagetypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_packagetypes").to route_to("dis_packagetypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_packagetypes/1").to route_to("dis_packagetypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_packagetypes/1").to route_to("dis_packagetypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_packagetypes/1").to route_to("dis_packagetypes#destroy", :id => "1")
    end

  end
end
