require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "MyText",
        :last_name => "MyText",
        :mobile => "MyText",
        :street_address => "MyText",
        :suburb => "MyText",
        :postcode => "MyText",
        :country => "MyText",
        :mobile => "MyText",
        :image_data => "MyText",
        :latitude => "9.99",
        :longitude => "9.99",
        :user => nil
      ),
      Profile.create!(
        :first_name => "MyText",
        :last_name => "MyText",
        :mobile => "MyText",
        :street_address => "MyText",
        :suburb => "MyText",
        :postcode => "MyText",
        :country => "MyText",
        :mobile => "MyText",
        :image_data => "MyText",
        :latitude => "9.99",
        :longitude => "9.99",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
