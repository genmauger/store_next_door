require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
