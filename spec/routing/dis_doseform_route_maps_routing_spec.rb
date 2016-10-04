require "rails_helper"

RSpec.describe DisDoseformRouteMapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseform_route_maps").to route_to("dis_doseform_route_maps#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseform_route_maps/new").to route_to("dis_doseform_route_maps#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseform_route_maps/1").to route_to("dis_doseform_route_maps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseform_route_maps/1/edit").to route_to("dis_doseform_route_maps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseform_route_maps").to route_to("dis_doseform_route_maps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseform_route_maps/1").to route_to("dis_doseform_route_maps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseform_route_maps/1").to route_to("dis_doseform_route_maps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseform_route_maps/1").to route_to("dis_doseform_route_maps#destroy", :id => "1")
    end

  end
end
