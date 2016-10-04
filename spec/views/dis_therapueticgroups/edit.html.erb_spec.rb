require 'rails_helper'

RSpec.describe "dis_therapueticgroups/edit", type: :view do
  before(:each) do
    @dis_therapueticgroup = assign(:dis_therapueticgroup, DisTherapueticgroup.create!(
      :id => 1,
      :name => "MyString",
      :system_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_therapueticgroup form" do
    render

    assert_select "form[action=?][method=?]", dis_therapueticgroup_path(@dis_therapueticgroup), "post" do

      assert_select "input#dis_therapueticgroup_id[name=?]", "dis_therapueticgroup[id]"

      assert_select "input#dis_therapueticgroup_name[name=?]", "dis_therapueticgroup[name]"

      assert_select "input#dis_therapueticgroup_system_id[name=?]", "dis_therapueticgroup[system_id]"

      assert_select "input#dis_therapueticgroup_status_id[name=?]", "dis_therapueticgroup[status_id]"
    end
  end
end
