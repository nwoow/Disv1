require 'rails_helper'

RSpec.describe "DisDoseforms", type: :request do
  describe "GET /dis_doseforms" do
    it "works! (now write some real specs)" do
      get dis_doseforms_path
      expect(response).to have_http_status(200)
    end
  end
end
