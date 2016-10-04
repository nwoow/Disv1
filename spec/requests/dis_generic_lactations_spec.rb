require 'rails_helper'

RSpec.describe "DisGenericLactations", type: :request do
  describe "GET /dis_generic_lactations" do
    it "works! (now write some real specs)" do
      get dis_generic_lactations_path
      expect(response).to have_http_status(200)
    end
  end
end
