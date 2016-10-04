require 'rails_helper'

RSpec.describe "DisRoutedGenerics", type: :request do
  describe "GET /dis_routed_generics" do
    it "works! (now write some real specs)" do
      get dis_routed_generics_path
      expect(response).to have_http_status(200)
    end
  end
end
