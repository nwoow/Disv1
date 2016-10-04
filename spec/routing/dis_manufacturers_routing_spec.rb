require "rails_helper"

RSpec.describe DisManufacturersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_manufacturers").to route_to("dis_manufacturers#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_manufacturers/new").to route_to("dis_manufacturers#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_manufacturers/1").to route_to("dis_manufacturers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_manufacturers/1/edit").to route_to("dis_manufacturers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_manufacturers").to route_to("dis_manufacturers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_manufacturers/1").to route_to("dis_manufacturers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_manufacturers/1").to route_to("dis_manufacturers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_manufacturers/1").to route_to("dis_manufacturers#destroy", :id => "1")
    end

  end
end
