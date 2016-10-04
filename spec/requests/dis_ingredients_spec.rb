require 'rails_helper'

RSpec.describe "DisIngredients", type: :request do
  describe "GET /dis_ingredients" do
    it "works! (now write some real specs)" do
      get dis_ingredients_path
      expect(response).to have_http_status(200)
    end
  end
end
