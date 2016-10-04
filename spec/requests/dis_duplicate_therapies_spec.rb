require 'rails_helper'

RSpec.describe "DisDuplicateTherapies", type: :request do
  describe "GET /dis_duplicate_therapies" do
    it "works! (now write some real specs)" do
      get dis_duplicate_therapies_path
      expect(response).to have_http_status(200)
    end
  end
end
