require 'rails_helper'

RSpec.describe "DisPackagetypes", type: :request do
  describe "GET /dis_packagetypes" do
    it "works! (now write some real specs)" do
      get dis_packagetypes_path
      expect(response).to have_http_status(200)
    end
  end
end
