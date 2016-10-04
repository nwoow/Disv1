require 'rails_helper'

RSpec.describe "dis_doseunits/edit", type: :view do
  before(:each) do
    @dis_doseunit = assign(:dis_doseunit, DisDoseunit.create!(
      :id => "",
      :name => "MyString",
      :abbrev => "MyString",
      :dosetype_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_doseunit form" do
    render

    assert_select "form[action=?][method=?]", dis_doseunit_path(@dis_doseunit), "post" do

      assert_select "input#dis_doseunit_id[name=?]", "dis_doseunit[id]"

      assert_select "input#dis_doseunit_name[name=?]", "dis_doseunit[name]"

      assert_select "input#dis_doseunit_abbrev[name=?]", "dis_doseunit[abbrev]"

      assert_select "input#dis_doseunit_dosetype_id[name=?]", "dis_doseunit[dosetype_id]"

      assert_select "input#dis_doseunit_status_id[name=?]", "dis_doseunit[status_id]"
    end
  end
end
