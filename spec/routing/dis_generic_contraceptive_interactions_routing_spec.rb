require "rails_helper"

RSpec.describe DisGenericContraceptiveInteractionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generic_contraceptive_interactions").to route_to("dis_generic_contraceptive_interactions#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generic_contraceptive_interactions/new").to route_to("dis_generic_contraceptive_interactions#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generic_contraceptive_interactions/1").to route_to("dis_generic_contraceptive_interactions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generic_contraceptive_interactions/1/edit").to route_to("dis_generic_contraceptive_interactions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generic_contraceptive_interactions").to route_to("dis_generic_contraceptive_interactions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generic_contraceptive_interactions/1").to route_to("dis_generic_contraceptive_interactions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generic_contraceptive_interactions/1").to route_to("dis_generic_contraceptive_interactions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generic_contraceptive_interactions/1").to route_to("dis_generic_contraceptive_interactions#destroy", :id => "1")
    end

  end
end
