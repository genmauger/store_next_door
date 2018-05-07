require 'rails_helper'

RSpec.describe "storage_facilities/index", type: :view do
  before(:each) do
    assign(:storage_facilities, [
      StorageFacility.create!(
        :street_address => "MyText",
        :suburb => "MyText",
        :postcode => "MyText",
        :state => "MyText",
        :country => "MyText",
        :longitude => "9.99",
        :latitude => "9.99",
        :image_data => "MyText",
        :user => nil
      ),
      StorageFacility.create!(
        :street_address => "MyText",
        :suburb => "MyText",
        :postcode => "MyText",
        :state => "MyText",
        :country => "MyText",
        :longitude => "9.99",
        :latitude => "9.99",
        :image_data => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of storage_facilities" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
