require 'rails_helper'

RSpec.describe "DisBrandnames", type: :request do
  describe "GET /dis_brandnames" do
    it "works! (now write some real specs)" do
      get dis_brandnames_path
      expect(response).to have_http_status(200)
    end
  end
end
