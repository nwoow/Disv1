require "rails_helper"

RSpec.describe DisDurationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_durations").to route_to("dis_durations#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_durations/new").to route_to("dis_durations#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_durations/1").to route_to("dis_durations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_durations/1/edit").to route_to("dis_durations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_durations").to route_to("dis_durations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_durations/1").to route_to("dis_durations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_durations/1").to route_to("dis_durations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_durations/1").to route_to("dis_durations#destroy", :id => "1")
    end

  end
end
