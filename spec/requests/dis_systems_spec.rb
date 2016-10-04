require 'rails_helper'

RSpec.describe "DisSystems", type: :request do
  describe "GET /dis_systems" do
    it "works! (now write some real specs)" do
      get dis_systems_path
      expect(response).to have_http_status(200)
    end
  end
end
