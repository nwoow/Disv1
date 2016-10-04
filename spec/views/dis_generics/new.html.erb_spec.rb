require 'rails_helper'

RSpec.describe "dis_generics/new", type: :view do
  before(:each) do
    assign(:dis_generic, DisGeneric.new(
      :name => "MyString",
      :is_combination => false,
      :rxcui => 1,
      :status_id => 1,
      :food_id => 1,
      :hepatic_id => 1,
      :renal_imp_id => 1,
      :release_status_id => 1,
      :is_essential => false
    ))
  end

  it "renders new dis_generic form" do
    render

    assert_select "form[action=?][method=?]", dis_generics_path, "post" do

      assert_select "input#dis_generic_name[name=?]", "dis_generic[name]"

      assert_select "input#dis_generic_is_combination[name=?]", "dis_generic[is_combination]"

      assert_select "input#dis_generic_rxcui[name=?]", "dis_generic[rxcui]"

      assert_select "input#dis_generic_status_id[name=?]", "dis_generic[status_id]"

      assert_select "input#dis_generic_food_id[name=?]", "dis_generic[food_id]"

      assert_select "input#dis_generic_hepatic_id[name=?]", "dis_generic[hepatic_id]"

      assert_select "input#dis_generic_renal_imp_id[name=?]", "dis_generic[renal_imp_id]"

      assert_select "input#dis_generic_release_status_id[name=?]", "dis_generic[release_status_id]"

      assert_select "input#dis_generic_is_essential[name=?]", "dis_generic[is_essential]"
    end
  end
end
