require 'rails_helper'

RSpec.describe "CombinationDoses", type: :request do
  describe "GET /combination_doses" do
    it "works! (now write some real specs)" do
      get combination_doses_path
      expect(response).to have_http_status(200)
    end
  end
end
