require 'rails_helper'

RSpec.describe "facility_spaces/index", type: :view do
  before(:each) do
    assign(:facility_spaces, [
      FacilitySpace.create!(
        :height => "MyText",
        :width => "MyText",
        :length => "MyText",
        :rate => "9.99",
        :image_data => "MyText",
        :storage_facility => nil
      ),
      FacilitySpace.create!(
        :height => "MyText",
        :width => "MyText",
        :length => "MyText",
        :rate => "9.99",
        :image_data => "MyText",
        :storage_facility => nil
      )
    ])
  end

  it "renders a list of facility_spaces" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
