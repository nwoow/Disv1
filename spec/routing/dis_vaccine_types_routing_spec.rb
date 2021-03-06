require "rails_helper"

RSpec.describe DisVaccineTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_vaccine_types").to route_to("dis_vaccine_types#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_vaccine_types/new").to route_to("dis_vaccine_types#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_vaccine_types/1").to route_to("dis_vaccine_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_vaccine_types/1/edit").to route_to("dis_vaccine_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_vaccine_types").to route_to("dis_vaccine_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_vaccine_types/1").to route_to("dis_vaccine_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_vaccine_types/1").to route_to("dis_vaccine_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_vaccine_types/1").to route_to("dis_vaccine_types#destroy", :id => "1")
    end

  end
end
