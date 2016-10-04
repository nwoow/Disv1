require "rails_helper"

RSpec.describe DisDoseformDoseunitLinksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseform_doseunit_links").to route_to("dis_doseform_doseunit_links#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseform_doseunit_links/new").to route_to("dis_doseform_doseunit_links#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseform_doseunit_links/1").to route_to("dis_doseform_doseunit_links#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseform_doseunit_links/1/edit").to route_to("dis_doseform_doseunit_links#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseform_doseunit_links").to route_to("dis_doseform_doseunit_links#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseform_doseunit_links/1").to route_to("dis_doseform_doseunit_links#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseform_doseunit_links/1").to route_to("dis_doseform_doseunit_links#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseform_doseunit_links/1").to route_to("dis_doseform_doseunit_links#destroy", :id => "1")
    end

  end
end
