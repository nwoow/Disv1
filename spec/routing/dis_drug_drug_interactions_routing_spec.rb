require "rails_helper"

RSpec.describe DisDrugDrugInteractionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_drug_drug_interactions").to route_to("dis_drug_drug_interactions#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_drug_drug_interactions/new").to route_to("dis_drug_drug_interactions#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_drug_drug_interactions/1").to route_to("dis_drug_drug_interactions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_drug_drug_interactions/1/edit").to route_to("dis_drug_drug_interactions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_drug_drug_interactions").to route_to("dis_drug_drug_interactions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_drug_drug_interactions/1").to route_to("dis_drug_drug_interactions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_drug_drug_interactions/1").to route_to("dis_drug_drug_interactions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_drug_drug_interactions/1").to route_to("dis_drug_drug_interactions#destroy", :id => "1")
    end

  end
end
