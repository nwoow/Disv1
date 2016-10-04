require 'rails_helper'

RSpec.describe "DisGenericHepaticImps", type: :request do
  describe "GET /dis_generic_hepatic_imps" do
    it "works! (now write some real specs)" do
      get dis_generic_hepatic_imps_path
      expect(response).to have_http_status(200)
    end
  end
end
