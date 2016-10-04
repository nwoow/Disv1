require 'rails_helper'

RSpec.describe "dis_doseunits/new", type: :view do
  before(:each) do
    assign(:dis_doseunit, DisDoseunit.new(
      :id => "",
      :name => "MyString",
      :abbrev => "MyString",
      :dosetype_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_doseunit form" do
    render

    assert_select "form[action=?][method=?]", dis_doseunits_path, "post" do

      assert_select "input#dis_doseunit_id[name=?]", "dis_doseunit[id]"

      assert_select "input#dis_doseunit_name[name=?]", "dis_doseunit[name]"

      assert_select "input#dis_doseunit_abbrev[name=?]", "dis_doseunit[abbrev]"

      assert_select "input#dis_doseunit_dosetype_id[name=?]", "dis_doseunit[dosetype_id]"

      assert_select "input#dis_doseunit_status_id[name=?]", "dis_doseunit[status_id]"
    end
  end
end
