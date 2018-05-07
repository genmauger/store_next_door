require 'rails_helper'

RSpec.describe "facility_spaces/new", type: :view do
  before(:each) do
    assign(:facility_space, FacilitySpace.new(
      :height => "MyText",
      :width => "MyText",
      :length => "MyText",
      :rate => "9.99",
      :image_data => "MyText",
      :storage_facility => nil
    ))
  end

  it "renders new facility_space form" do
    render

    assert_select "form[action=?][method=?]", facility_spaces_path, "post" do

      assert_select "textarea[name=?]", "facility_space[height]"

      assert_select "textarea[name=?]", "facility_space[width]"

      assert_select "textarea[name=?]", "facility_space[length]"

      assert_select "input[name=?]", "facility_space[rate]"

      assert_select "textarea[name=?]", "facility_space[image_data]"

      assert_select "input[name=?]", "facility_space[storage_facility_id]"
    end
  end
end
