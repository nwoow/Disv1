require 'rails_helper'

RSpec.describe "DisPregnancyCategories", type: :request do
  describe "GET /dis_pregnancy_categories" do
    it "works! (now write some real specs)" do
      get dis_pregnancy_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
