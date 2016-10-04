require "rails_helper"

RSpec.describe DisDispensableGenericsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_dispensable_generics").to route_to("dis_dispensable_generics#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_dispensable_generics/new").to route_to("dis_dispensable_generics#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_dispensable_generics/1").to route_to("dis_dispensable_generics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_dispensable_generics/1/edit").to route_to("dis_dispensable_generics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_dispensable_generics").to route_to("dis_dispensable_generics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_dispensable_generics/1").to route_to("dis_dispensable_generics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_dispensable_generics/1").to route_to("dis_dispensable_generics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_dispensable_generics/1").to route_to("dis_dispensable_generics#destroy", :id => "1")
    end

  end
end
