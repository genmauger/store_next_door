require "rails_helper"

RSpec.describe StorageFacilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/storage_facilities").to route_to("storage_facilities#index")
    end

    it "routes to #new" do
      expect(:get => "/storage_facilities/new").to route_to("storage_facilities#new")
    end

    it "routes to #show" do
      expect(:get => "/storage_facilities/1").to route_to("storage_facilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/storage_facilities/1/edit").to route_to("storage_facilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/storage_facilities").to route_to("storage_facilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/storage_facilities/1").to route_to("storage_facilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/storage_facilities/1").to route_to("storage_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/storage_facilities/1").to route_to("storage_facilities#destroy", :id => "1")
    end

  end
end
