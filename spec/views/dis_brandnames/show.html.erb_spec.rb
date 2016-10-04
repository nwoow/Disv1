require 'rails_helper'

RSpec.describe "dis_brandnames/show", type: :view do
  before(:each) do
    @dis_brandname = assign(:dis_brandname, DisBrandname.create!(
      :id => 1,
      :name => "Name",
      :release_status_id => 2,
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
