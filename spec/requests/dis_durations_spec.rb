require 'rails_helper'

RSpec.describe "DisDurations", type: :request do
  describe "GET /dis_durations" do
    it "works! (now write some real specs)" do
      get dis_durations_path
      expect(response).to have_http_status(200)
    end
  end
end
