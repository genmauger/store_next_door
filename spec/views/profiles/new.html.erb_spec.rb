require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
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
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "textarea[name=?]", "profile[first_name]"

      assert_select "textarea[name=?]", "profile[last_name]"

      assert_select "textarea[name=?]", "profile[mobile]"

      assert_select "textarea[name=?]", "profile[street_address]"

      assert_select "textarea[name=?]", "profile[suburb]"

      assert_select "textarea[name=?]", "profile[postcode]"

      assert_select "textarea[name=?]", "profile[country]"

      assert_select "textarea[name=?]", "profile[mobile]"

      assert_select "textarea[name=?]", "profile[image_data]"

      assert_select "input[name=?]", "profile[latitude]"

      assert_select "input[name=?]", "profile[longitude]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
