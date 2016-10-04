require 'rails_helper'

RSpec.describe "dis_therapueticgroups/show", type: :view do
  before(:each) do
    @dis_therapueticgroup = assign(:dis_therapueticgroup, DisTherapueticgroup.create!(
      :id => 1,
      :name => "Name",
      :system_id => 2,
      :status_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
