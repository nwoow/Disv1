require 'rails_helper'

RSpec.describe "dis_doseforms/show", type: :view do
  before(:each) do
    @dis_doseform = assign(:dis_doseform, DisDoseform.create!(
      :id => 1,
      :name => "Name",
      :abbrev => "Abbrev",
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbrev/)
    expect(rendered).to match(/2/)
  end
end
