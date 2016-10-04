require 'rails_helper'

RSpec.describe "dis_doseunit_conversions/show", type: :view do
  before(:each) do
    @dis_doseunit_conversion = assign(:dis_doseunit_conversion, DisDoseunitConversion.create!(
      :id => "",
      :from_doseunit_id => 1,
      :to_doeunit_id => 2,
      :conv_factor => "",
      :status_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
  end
end
