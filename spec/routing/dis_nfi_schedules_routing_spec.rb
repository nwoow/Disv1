require "rails_helper"

RSpec.describe DisNfiSchedulesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dis_nfi_schedules").to route_to("dis_nfi_schedules#index")
    end

    it "routes to #new" do
      expect(:get => "/dis_nfi_schedules/new").to route_to("dis_nfi_schedules#new")
    end

    it "routes to #show" do
      expect(:get => "/dis_nfi_schedules/1").to route_to("dis_nfi_schedules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dis_nfi_schedules/1/edit").to route_to("dis_nfi_schedules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dis_nfi_schedules").to route_to("dis_nfi_schedules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dis_nfi_schedules/1").to route_to("dis_nfi_schedules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dis_nfi_schedules/1").to route_to("dis_nfi_schedules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dis_nfi_schedules/1").to route_to("dis_nfi_schedules#destroy", :id => "1")
    end

  end
end
