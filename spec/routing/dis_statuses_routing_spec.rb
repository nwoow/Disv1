require "rails_helper"

RSpec.describe DisStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_statuses").to route_to("dis_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_statuses/new").to route_to("dis_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_statuses/1").to route_to("dis_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_statuses/1/edit").to route_to("dis_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_statuses").to route_to("dis_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_statuses/1").to route_to("dis_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_statuses/1").to route_to("dis_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_statuses/1").to route_to("dis_statuses#destroy", :id => "1")
    end

  end
end
