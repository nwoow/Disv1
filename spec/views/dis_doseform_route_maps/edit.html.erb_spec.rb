require 'rails_helper'

RSpec.describe "dis_doseform_route_maps/edit", type: :view do
  before(:each) do
    @dis_doseform_route_map = assign(:dis_doseform_route_map, DisDoseformRouteMap.create!(
      :doseform_id => 1,
      :route_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_doseform_route_map form" do
    render

    assert_select "form[action=?][method=?]", dis_doseform_route_map_path(@dis_doseform_route_map), "post" do

      assert_select "input#dis_doseform_route_map_doseform_id[name=?]", "dis_doseform_route_map[doseform_id]"

      assert_select "input#dis_doseform_route_map_route_id[name=?]", "dis_doseform_route_map[route_id]"

      assert_select "input#dis_doseform_route_map_status_id[name=?]", "dis_doseform_route_map[status_id]"
    end
  end
end
