require "rails_helper"

RSpec.describe DisBrandnamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_brandnames").to route_to("dis_brandnames#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_brandnames/new").to route_to("dis_brandnames#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_brandnames/1").to route_to("dis_brandnames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_brandnames/1/edit").to route_to("dis_brandnames#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_brandnames").to route_to("dis_brandnames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_brandnames/1").to route_to("dis_brandnames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_brandnames/1").to route_to("dis_brandnames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_brandnames/1").to route_to("dis_brandnames#destroy", :id => "1")
    end

  end
end
