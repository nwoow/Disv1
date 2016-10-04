require 'rails_helper'

RSpec.describe "dis_routes/show", type: :view do
  before(:each) do
    @dis_route = assign(:dis_route, DisRoute.create!(
      :id => 1,
      :name => "Name",
      :abbrev => 2,
      :adverb => 3,
      :status_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
