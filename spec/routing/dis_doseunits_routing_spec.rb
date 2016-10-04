require "rails_helper"

RSpec.describe DisDoseunitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseunits").to route_to("dis_doseunits#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseunits/new").to route_to("dis_doseunits#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseunits/1").to route_to("dis_doseunits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseunits/1/edit").to route_to("dis_doseunits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseunits").to route_to("dis_doseunits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseunits/1").to route_to("dis_doseunits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseunits/1").to route_to("dis_doseunits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseunits/1").to route_to("dis_doseunits#destroy", :id => "1")
    end

  end
end
