require 'rails_helper'

RSpec.describe "dis_doseforms/new", type: :view do
  before(:each) do
    assign(:dis_doseform, DisDoseform.new(
      :id => 1,
      :name => "MyString",
      :abbrev => "MyString",
      :status_id => 1
    ))
  end

  it "renders new dis_doseform form" do
    render

    assert_select "form[action=?][method=?]", dis_doseforms_path, "post" do

      assert_select "input#dis_doseform_id[name=?]", "dis_doseform[id]"

      assert_select "input#dis_doseform_name[name=?]", "dis_doseform[name]"

      assert_select "input#dis_doseform_abbrev[name=?]", "dis_doseform[abbrev]"

      assert_select "input#dis_doseform_status_id[name=?]", "dis_doseform[status_id]"
    end
  end
end
