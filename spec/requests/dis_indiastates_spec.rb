require 'rails_helper'

RSpec.describe "DisIndiastates", type: :request do
  describe "GET /dis_indiastates" do
    it "works! (now write some real specs)" do
      get dis_indiastates_path
      expect(response).to have_http_status(200)
    end
  end
end
