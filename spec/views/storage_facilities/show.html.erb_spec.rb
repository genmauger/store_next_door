require 'rails_helper'

RSpec.describe "storage_facilities/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
