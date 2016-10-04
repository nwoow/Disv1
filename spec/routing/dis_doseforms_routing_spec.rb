require "rails_helper"

RSpec.describe DisDoseformsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_doseforms").to route_to("dis_doseforms#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_doseforms/new").to route_to("dis_doseforms#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_doseforms/1").to route_to("dis_doseforms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_doseforms/1/edit").to route_to("dis_doseforms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_doseforms").to route_to("dis_doseforms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_doseforms/1").to route_to("dis_doseforms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_doseforms/1").to route_to("dis_doseforms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_doseforms/1").to route_to("dis_doseforms#destroy", :id => "1")
    end

  end
end
