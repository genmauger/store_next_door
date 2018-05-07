require 'rails_helper'

RSpec.describe "FacilitySpaces", type: :request do
  describe "GET /facility_spaces" do
    it "works! (now write some real specs)" do
      get facility_spaces_path
      expect(response).to have_http_status(200)
    end
  end
end
