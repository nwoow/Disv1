require 'rails_helper'

RSpec.describe "DisDoseperiods", type: :request do
  describe "GET /dis_doseperiods" do
    it "works! (now write some real specs)" do
      get dis_doseperiods_path
      expect(response).to have_http_status(200)
    end
  end
end
