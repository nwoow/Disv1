require 'rails_helper'

RSpec.describe "dis_routed_generics/new", type: :view do
  before(:each) do
    assign(:dis_routed_generic, DisRoutedGeneric.new(
      :id => 1,
      :name => "MyString",
      :generic_id => 1,
      :route_id => 1,
      :is_combination => false,
      :pregnancy_category_id => 1,
      :release_status_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_routed_generic form" do
    render

    assert_select "form[action=?][method=?]", dis_routed_generics_path, "post" do

      assert_select "input#dis_routed_generic_id[name=?]", "dis_routed_generic[id]"

      assert_select "input#dis_routed_generic_name[name=?]", "dis_routed_generic[name]"

      assert_select "input#dis_routed_generic_generic_id[name=?]", "dis_routed_generic[generic_id]"

      assert_select "input#dis_routed_generic_route_id[name=?]", "dis_routed_generic[route_id]"

      assert_select "input#dis_routed_generic_is_combination[name=?]", "dis_routed_generic[is_combination]"

      assert_select "input#dis_routed_generic_pregnancy_category_id[name=?]", "dis_routed_generic[pregnancy_category_id]"

      assert_select "input#dis_routed_generic_release_status_id[name=?]", "dis_routed_generic[release_status_id]"

      assert_select "input#dis_routed_generic_status_id[name=?]", "dis_routed_generic[status_id]"
    end
  end
end
