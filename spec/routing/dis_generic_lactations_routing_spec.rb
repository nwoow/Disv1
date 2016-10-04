require "rails_helper"

RSpec.describe DisGenericLactationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generic_lactations").to route_to("dis_generic_lactations#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generic_lactations/new").to route_to("dis_generic_lactations#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generic_lactations/1").to route_to("dis_generic_lactations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generic_lactations/1/edit").to route_to("dis_generic_lactations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generic_lactations").to route_to("dis_generic_lactations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generic_lactations/1").to route_to("dis_generic_lactations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generic_lactations/1").to route_to("dis_generic_lactations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generic_lactations/1").to route_to("dis_generic_lactations#destroy", :id => "1")
    end

  end
end
