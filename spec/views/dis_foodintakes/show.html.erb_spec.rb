require 'rails_helper'

RSpec.describe "dis_foodintakes/show", type: :view do
  before(:each) do
    @dis_foodintake = assign(:dis_foodintake, DisFoodintake.create!(
      :id => 1,
      :description => "Description",
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
