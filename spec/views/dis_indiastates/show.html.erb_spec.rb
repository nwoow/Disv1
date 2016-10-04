require 'rails_helper'

RSpec.describe "dis_indiastates/show", type: :view do
  before(:each) do
    @dis_indiastate = assign(:dis_indiastate, DisIndiastate.create!(
      :id => 1,
      :name => "Name",
      :abbrev => "Abbrev"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbrev/)
  end
end
