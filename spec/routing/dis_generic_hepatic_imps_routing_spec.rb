require "rails_helper"

RSpec.describe DisGenericHepaticImpsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_generic_hepatic_imps").to route_to("dis_generic_hepatic_imps#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_generic_hepatic_imps/new").to route_to("dis_generic_hepatic_imps#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_generic_hepatic_imps/1").to route_to("dis_generic_hepatic_imps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_generic_hepatic_imps/1/edit").to route_to("dis_generic_hepatic_imps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_generic_hepatic_imps").to route_to("dis_generic_hepatic_imps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_generic_hepatic_imps/1").to route_to("dis_generic_hepatic_imps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_generic_hepatic_imps/1").to route_to("dis_generic_hepatic_imps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_generic_hepatic_imps/1").to route_to("dis_generic_hepatic_imps#destroy", :id => "1")
    end

  end
end
