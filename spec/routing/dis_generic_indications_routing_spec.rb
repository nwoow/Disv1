require "rails_helper"

RSpec.describe DisGenericIndicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generic_indications").to route_to("dis_generic_indications#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generic_indications/new").to route_to("dis_generic_indications#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generic_indications/1").to route_to("dis_generic_indications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generic_indications/1/edit").to route_to("dis_generic_indications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generic_indications").to route_to("dis_generic_indications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generic_indications/1").to route_to("dis_generic_indications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generic_indications/1").to route_to("dis_generic_indications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generic_indications/1").to route_to("dis_generic_indications#destroy", :id => "1")
    end

  end
end
