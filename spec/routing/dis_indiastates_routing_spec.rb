require "rails_helper"

RSpec.describe DisIndiastatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_indiastates").to route_to("dis_indiastates#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_indiastates/new").to route_to("dis_indiastates#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_indiastates/1").to route_to("dis_indiastates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_indiastates/1/edit").to route_to("dis_indiastates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_indiastates").to route_to("dis_indiastates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_indiastates/1").to route_to("dis_indiastates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_indiastates/1").to route_to("dis_indiastates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_indiastates/1").to route_to("dis_indiastates#destroy", :id => "1")
    end

  end
end
