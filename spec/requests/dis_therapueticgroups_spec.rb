require 'rails_helper'

RSpec.describe "DisTherapueticgroups", type: :request do
  describe "GET /dis_therapueticgroups" do
    it "works! (now write some real specs)" do
      get dis_therapueticgroups_path
      expect(response).to have_http_status(200)
    end
  end
end
