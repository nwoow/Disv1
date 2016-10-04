require 'rails_helper'

RSpec.describe "DisDatasources", type: :request do
  describe "GET /dis_datasources" do
    it "works! (now write some real specs)" do
      get dis_datasources_path
      expect(response).to have_http_status(200)
    end
  end
end
