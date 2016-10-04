require 'rails_helper'

RSpec.describe "DisDispensableGenerics", type: :request do
  describe "GET /dis_dispensable_generics" do
    it "works! (now write some real specs)" do
      get dis_dispensable_generics_path
      expect(response).to have_http_status(200)
    end
  end
end
