require 'rails_helper'

RSpec.describe "dis_routes/new", type: :view do
  before(:each) do
    assign(:dis_route, DisRoute.new(
      :id => 1,
      :name => "MyString",
      :abbrev => 1,
      :adverb => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_route form" do
    render

    assert_select "form[action=?][method=?]", dis_routes_path, "post" do

      assert_select "input#dis_route_id[name=?]", "dis_route[id]"

      assert_select "input#dis_route_name[name=?]", "dis_route[name]"

      assert_select "input#dis_route_abbrev[name=?]", "dis_route[abbrev]"

      assert_select "input#dis_route_adverb[name=?]", "dis_route[adverb]"

      assert_select "input#dis_route_status_id[name=?]", "dis_route[status_id]"
    end
  end
end
