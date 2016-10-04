require "rails_helper"

RSpec.describe DisGenericMonographsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generic_monographs").to route_to("dis_generic_monographs#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generic_monographs/new").to route_to("dis_generic_monographs#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generic_monographs/1").to route_to("dis_generic_monographs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generic_monographs/1/edit").to route_to("dis_generic_monographs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generic_monographs").to route_to("dis_generic_monographs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generic_monographs/1").to route_to("dis_generic_monographs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generic_monographs/1").to route_to("dis_generic_monographs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generic_monographs/1").to route_to("dis_generic_monographs#destroy", :id => "1")
    end

  end
end
