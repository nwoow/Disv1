require 'rails_helper'

RSpec.describe "dis_doseform_route_maps/show", type: :view do
  before(:each) do
    @dis_doseform_route_map = assign(:dis_doseform_route_map, DisDoseformRouteMap.create!(
      :doseform_id => 1,
      :route_id => 2,
      :status_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
