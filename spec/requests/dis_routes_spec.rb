require 'rails_helper'

RSpec.describe "DisRoutes", type: :request do
  describe "GET /dis_routes" do
    it "works! (now write some real specs)" do
      get dis_routes_path
      expect(response).to have_http_status(200)
    end
  end
end
