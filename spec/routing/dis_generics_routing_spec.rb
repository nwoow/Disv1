require "rails_helper"

RSpec.describe DisGenericsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generics").to route_to("dis_generics#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generics/new").to route_to("dis_generics#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generics/1").to route_to("dis_generics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generics/1/edit").to route_to("dis_generics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generics").to route_to("dis_generics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generics/1").to route_to("dis_generics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generics/1").to route_to("dis_generics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generics/1").to route_to("dis_generics#destroy", :id => "1")
    end

  end
end
