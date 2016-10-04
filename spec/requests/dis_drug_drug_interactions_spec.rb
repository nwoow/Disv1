require 'rails_helper'

RSpec.describe "DisDrugDrugInteractions", type: :request do
  describe "GET /dis_drug_drug_interactions" do
    it "works! (now write some real specs)" do
      get dis_drug_drug_interactions_path
      expect(response).to have_http_status(200)
    end
  end
end
