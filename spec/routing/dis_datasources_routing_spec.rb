require "rails_helper"

RSpec.describe DisDatasourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_datasources").to route_to("dis_datasources#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_datasources/new").to route_to("dis_datasources#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_datasources/1").to route_to("dis_datasources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_datasources/1/edit").to route_to("dis_datasources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_datasources").to route_to("dis_datasources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_datasources/1").to route_to("dis_datasources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_datasources/1").to route_to("dis_datasources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_datasources/1").to route_to("dis_datasources#destroy", :id => "1")
    end

  end
end
