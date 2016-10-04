require 'rails_helper'

RSpec.describe "dis_therapueticgroups/new", type: :view do
  before(:each) do
    assign(:dis_therapueticgroup, DisTherapueticgroup.new(
      :id => 1,
      :name => "MyString",
      :system_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_therapueticgroup form" do
    render

    assert_select "form[action=?][method=?]", dis_therapueticgroups_path, "post" do

      assert_select "input#dis_therapueticgroup_id[name=?]", "dis_therapueticgroup[id]"

      assert_select "input#dis_therapueticgroup_name[name=?]", "dis_therapueticgroup[name]"

      assert_select "input#dis_therapueticgroup_system_id[name=?]", "dis_therapueticgroup[system_id]"

      assert_select "input#dis_therapueticgroup_status_id[name=?]", "dis_therapueticgroup[status_id]"
    end
  end
end
