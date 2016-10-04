require 'rails_helper'

RSpec.describe "DisVaccineTypes", type: :request do
  describe "GET /dis_vaccine_types" do
    it "works! (now write some real specs)" do
      get dis_vaccine_types_path
      expect(response).to have_http_status(200)
    end
  end
end
