require 'rails_helper'

RSpec.describe "dis_dispensable_generics/new", type: :view do
  before(:each) do
    assign(:dis_dispensable_generic, DisDispensableGeneric.new(
      :routed_doseform_generic_id => "",
      :strength => "MyString",
      :strength_doseunit_id => 1,
      :per_strength => "MyString",
      :per_doseunit_id => 1,
      :name => "MyString",
      :release_status_id => 1,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders new dis_dispensable_generic form" do
    render

    assert_select "form[action=?][method=?]", dis_dispensable_generics_path, "post" do

      assert_select "input#dis_dispensable_generic_routed_doseform_generic_id[name=?]", "dis_dispensable_generic[routed_doseform_generic_id]"

      assert_select "input#dis_dispensable_generic_strength[name=?]", "dis_dispensable_generic[strength]"

      assert_select "input#dis_dispensable_generic_strength_doseunit_id[name=?]", "dis_dispensable_generic[strength_doseunit_id]"

      assert_select "input#dis_dispensable_generic_per_strength[name=?]", "dis_dispensable_generic[per_strength]"

      assert_select "input#dis_dispensable_generic_per_doseunit_id[name=?]", "dis_dispensable_generic[per_doseunit_id]"

      assert_select "input#dis_dispensable_generic_name[name=?]", "dis_dispensable_generic[name]"

      assert_select "input#dis_dispensable_generic_release_status_id[name=?]", "dis_dispensable_generic[release_status_id]"

      assert_select "input#dis_dispensable_generic_status_id[name=?]", "dis_dispensable_generic[status_id]"

      assert_select "input#dis_dispensable_generic_datasource_id[name=?]", "dis_dispensable_generic[datasource_id]"
    end
  end
end
