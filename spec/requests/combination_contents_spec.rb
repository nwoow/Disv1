require 'rails_helper'

RSpec.describe "CombinationContents", type: :request do
  describe "GET /combination_contents" do
    it "works! (now write some real specs)" do
      get combination_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
