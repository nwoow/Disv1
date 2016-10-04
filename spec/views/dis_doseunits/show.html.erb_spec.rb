require 'rails_helper'

RSpec.describe "dis_doseunits/show", type: :view do
  before(:each) do
    @dis_doseunit = assign(:dis_doseunit, DisDoseunit.create!(
      :id => "",
      :name => "Name",
      :abbrev => "Abbrev",
      :dosetype_id => 1,
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbrev/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
