require 'rails_helper'

RSpec.describe "dis_doseperiods/show", type: :view do
  before(:each) do
    @dis_doseperiod = assign(:dis_doseperiod, DisDoseperiod.create!(
      :name => "Name",
      :is_common => false,
      :abbrev => "Abbrev",
      :status_id => 1,
      :datasource_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Abbrev/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
