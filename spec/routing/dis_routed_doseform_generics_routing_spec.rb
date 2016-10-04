require "rails_helper"

RSpec.describe DisRoutedDoseformGenericsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_routed_doseform_generics").to route_to("dis_routed_doseform_generics#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_routed_doseform_generics/new").to route_to("dis_routed_doseform_generics#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_routed_doseform_generics/1").to route_to("dis_routed_doseform_generics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_routed_doseform_generics/1/edit").to route_to("dis_routed_doseform_generics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_routed_doseform_generics").to route_to("dis_routed_doseform_generics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_routed_doseform_generics/1").to route_to("dis_routed_doseform_generics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_routed_doseform_generics/1").to route_to("dis_routed_doseform_generics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_routed_doseform_generics/1").to route_to("dis_routed_doseform_generics#destroy", :id => "1")
    end

  end
end
