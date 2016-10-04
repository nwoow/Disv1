require 'rails_helper'

RSpec.describe "DisManufacturers", type: :request do
  describe "GET /dis_manufacturers" do
    it "works! (now write some real specs)" do
      get dis_manufacturers_path
      expect(response).to have_http_status(200)
    end
  end
end
