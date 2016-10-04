require 'rails_helper'

RSpec.describe "dis_routed_doseform_generics/edit", type: :view do
  before(:each) do
    @dis_routed_doseform_generic = assign(:dis_routed_doseform_generic, DisRoutedDoseformGeneric.create!(
      :generic_id => 1,
      :rtd_gen_id => 1,
      :route_id => 1,
      :doseform_id => 1,
      :name => "MyString",
      :monograph_id => 1,
      :status_id => 1,
      :release_status_id => 1,
      :is_combination => false
    ))
  end

  it "renders the edit dis_routed_doseform_generic form" do
    render

    assert_select "form[action=?][method=?]", dis_routed_doseform_generic_path(@dis_routed_doseform_generic), "post" do

      assert_select "input#dis_routed_doseform_generic_generic_id[name=?]", "dis_routed_doseform_generic[generic_id]"

      assert_select "input#dis_routed_doseform_generic_rtd_gen_id[name=?]", "dis_routed_doseform_generic[rtd_gen_id]"

      assert_select "input#dis_routed_doseform_generic_route_id[name=?]", "dis_routed_doseform_generic[route_id]"

      assert_select "input#dis_routed_doseform_generic_doseform_id[name=?]", "dis_routed_doseform_generic[doseform_id]"

      assert_select "input#dis_routed_doseform_generic_name[name=?]", "dis_routed_doseform_generic[name]"

      assert_select "input#dis_routed_doseform_generic_monograph_id[name=?]", "dis_routed_doseform_generic[monograph_id]"

      assert_select "input#dis_routed_doseform_generic_status_id[name=?]", "dis_routed_doseform_generic[status_id]"

      assert_select "input#dis_routed_doseform_generic_release_status_id[name=?]", "dis_routed_doseform_generic[release_status_id]"

      assert_select "input#dis_routed_doseform_generic_is_combination[name=?]", "dis_routed_doseform_generic[is_combination]"
    end
  end
end
