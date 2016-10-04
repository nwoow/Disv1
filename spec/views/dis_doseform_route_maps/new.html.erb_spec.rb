require 'rails_helper'

RSpec.describe "dis_doseform_route_maps/new", type: :view do
  before(:each) do
    assign(:dis_doseform_route_map, DisDoseformRouteMap.new(
      :doseform_id => 1,
      :route_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_doseform_route_map form" do
    render

    assert_select "form[action=?][method=?]", dis_doseform_route_maps_path, "post" do

      assert_select "input#dis_doseform_route_map_doseform_id[name=?]", "dis_doseform_route_map[doseform_id]"

      assert_select "input#dis_doseform_route_map_route_id[name=?]", "dis_doseform_route_map[route_id]"

      assert_select "input#dis_doseform_route_map_status_id[name=?]", "dis_doseform_route_map[status_id]"
    end
  end
end
