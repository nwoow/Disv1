require 'rails_helper'

RSpec.describe "DisAdditiveFrequencies", type: :request do
  describe "GET /dis_additive_frequencies" do
    it "works! (now write some real specs)" do
      get dis_additive_frequencies_path
      expect(response).to have_http_status(200)
    end
  end
end
