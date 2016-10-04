require "rails_helper"

RSpec.describe DisDuplicateTherapiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_duplicate_therapies").to route_to("dis_duplicate_therapies#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_duplicate_therapies/new").to route_to("dis_duplicate_therapies#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_duplicate_therapies/1").to route_to("dis_duplicate_therapies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_duplicate_therapies/1/edit").to route_to("dis_duplicate_therapies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_duplicate_therapies").to route_to("dis_duplicate_therapies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_duplicate_therapies/1").to route_to("dis_duplicate_therapies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_duplicate_therapies/1").to route_to("dis_duplicate_therapies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_duplicate_therapies/1").to route_to("dis_duplicate_therapies#destroy", :id => "1")
    end

  end
end
