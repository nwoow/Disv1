require 'rails_helper'

RSpec.describe "DisDoseunits", type: :request do
  describe "GET /dis_doseunits" do
    it "works! (now write some real specs)" do
      get dis_doseunits_path
      expect(response).to have_http_status(200)
    end
  end
end
