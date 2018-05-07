require 'rails_helper'

RSpec.describe "storage_facilities/edit", type: :view do
  before(:each) do
    @storage_facility = assign(:storage_facility, StorageFacility.create!(
      :street_address => "MyText",
      :suburb => "MyText",
      :postcode => "MyText",
      :state => "MyText",
      :country => "MyText",
      :longitude => "9.99",
      :latitude => "9.99",
      :image_data => "MyText",
      :user => nil
    ))
  end

  it "renders the edit storage_facility form" do
    render

    assert_select "form[action=?][method=?]", storage_facility_path(@storage_facility), "post" do

      assert_select "textarea[name=?]", "storage_facility[street_address]"

      assert_select "textarea[name=?]", "storage_facility[suburb]"

      assert_select "textarea[name=?]", "storage_facility[postcode]"

      assert_select "textarea[name=?]", "storage_facility[state]"

      assert_select "textarea[name=?]", "storage_facility[country]"

      assert_select "input[name=?]", "storage_facility[longitude]"

      assert_select "input[name=?]", "storage_facility[latitude]"

      assert_select "textarea[name=?]", "storage_facility[image_data]"

      assert_select "input[name=?]", "storage_facility[user_id]"
    end
  end
end
