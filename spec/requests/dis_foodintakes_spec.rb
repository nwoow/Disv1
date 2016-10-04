require 'rails_helper'

RSpec.describe "DisFoodintakes", type: :request do
  describe "GET /dis_foodintakes" do
    it "works! (now write some real specs)" do
      get dis_foodintakes_path
      expect(response).to have_http_status(200)
    end
  end
end
