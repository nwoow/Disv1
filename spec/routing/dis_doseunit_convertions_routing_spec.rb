require "rails_helper"

RSpec.describe DisDoseunitConvertionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseunit_convertions").to route_to("dis_doseunit_convertions#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseunit_convertions/new").to route_to("dis_doseunit_convertions#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseunit_convertions/1").to route_to("dis_doseunit_convertions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseunit_convertions/1/edit").to route_to("dis_doseunit_convertions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseunit_convertions").to route_to("dis_doseunit_convertions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseunit_convertions/1").to route_to("dis_doseunit_convertions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseunit_convertions/1").to route_to("dis_doseunit_convertions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseunit_convertions/1").to route_to("dis_doseunit_convertions#destroy", :id => "1")
    end

  end
end
