require "rails_helper"

RSpec.describe DisPregnancyCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_pregnancy_categories").to route_to("dis_pregnancy_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_pregnancy_categories/new").to route_to("dis_pregnancy_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_pregnancy_categories/1").to route_to("dis_pregnancy_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_pregnancy_categories/1/edit").to route_to("dis_pregnancy_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_pregnancy_categories").to route_to("dis_pregnancy_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_pregnancy_categories/1").to route_to("dis_pregnancy_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_pregnancy_categories/1").to route_to("dis_pregnancy_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_pregnancy_categories/1").to route_to("dis_pregnancy_categories#destroy", :id => "1")
    end

  end
end
