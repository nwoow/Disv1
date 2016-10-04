require "rails_helper"

RSpec.describe DisDoseperiodsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseperiods").to route_to("dis_doseperiods#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseperiods/new").to route_to("dis_doseperiods#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseperiods/1").to route_to("dis_doseperiods#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseperiods/1/edit").to route_to("dis_doseperiods#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseperiods").to route_to("dis_doseperiods#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseperiods/1").to route_to("dis_doseperiods#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseperiods/1").to route_to("dis_doseperiods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseperiods/1").to route_to("dis_doseperiods#destroy", :id => "1")
    end

  end
end
