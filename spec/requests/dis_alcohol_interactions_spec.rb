require 'rails_helper'

RSpec.describe "DisAlcoholInteractions", type: :request do
  describe "GET /dis_alcohol_interactions" do
    it "works! (now write some real specs)" do
      get dis_alcohol_interactions_path
      expect(response).to have_http_status(200)
    end
  end
end
