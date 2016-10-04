require "rails_helper"

RSpec.describe DisRoutesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_routes").to route_to("dis_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_routes/new").to route_to("dis_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_routes/1").to route_to("dis_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_routes/1/edit").to route_to("dis_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_routes").to route_to("dis_routes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_routes/1").to route_to("dis_routes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_routes/1").to route_to("dis_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_routes/1").to route_to("dis_routes#destroy", :id => "1")
    end

  end
end
