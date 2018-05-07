require "rails_helper"

RSpec.describe FacilitySpacesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/facility_spaces").to route_to("facility_spaces#index")
    end

    it "routes to #new" do
      expect(:get => "/facility_spaces/new").to route_to("facility_spaces#new")
    end

    it "routes to #show" do
      expect(:get => "/facility_spaces/1").to route_to("facility_spaces#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/facility_spaces/1/edit").to route_to("facility_spaces#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/facility_spaces").to route_to("facility_spaces#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/facility_spaces/1").to route_to("facility_spaces#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/facility_spaces/1").to route_to("facility_spaces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/facility_spaces/1").to route_to("facility_spaces#destroy", :id => "1")
    end

  end
end
