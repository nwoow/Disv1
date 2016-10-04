require "rails_helper"

RSpec.describe DisDoseunitConversionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseunit_conversions").to route_to("dis_doseunit_conversions#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseunit_conversions/new").to route_to("dis_doseunit_conversions#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseunit_conversions/1").to route_to("dis_doseunit_conversions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseunit_conversions/1/edit").to route_to("dis_doseunit_conversions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseunit_conversions").to route_to("dis_doseunit_conversions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseunit_conversions/1").to route_to("dis_doseunit_conversions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseunit_conversions/1").to route_to("dis_doseunit_conversions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseunit_conversions/1").to route_to("dis_doseunit_conversions#destroy", :id => "1")
    end

  end
end
