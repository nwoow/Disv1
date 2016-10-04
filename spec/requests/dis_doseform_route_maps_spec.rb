require 'rails_helper'

RSpec.describe "DisDoseformRouteMaps", type: :request do
  describe "GET /dis_doseform_route_maps" do
    it "works! (now write some real specs)" do
      get dis_doseform_route_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
