require 'rails_helper'

RSpec.describe "dis_doseunit_conversions/edit", type: :view do
  before(:each) do
    @dis_doseunit_conversion = assign(:dis_doseunit_conversion, DisDoseunitConversion.create!(
      :id => "",
      :from_doseunit_id => 1,
      :to_doeunit_id => 1,
      :conv_factor => "",
      :status_id => 1
    ))
  end

  it "renders the edit dis_doseunit_conversion form" do
    render

    assert_select "form[action=?][method=?]", dis_doseunit_conversion_path(@dis_doseunit_conversion), "post" do

      assert_select "input#dis_doseunit_conversion_id[name=?]", "dis_doseunit_conversion[id]"

      assert_select "input#dis_doseunit_conversion_from_doseunit_id[name=?]", "dis_doseunit_conversion[from_doseunit_id]"

      assert_select "input#dis_doseunit_conversion_to_doeunit_id[name=?]", "dis_doseunit_conversion[to_doeunit_id]"

      assert_select "input#dis_doseunit_conversion_conv_factor[name=?]", "dis_doseunit_conversion[conv_factor]"

      assert_select "input#dis_doseunit_conversion_status_id[name=?]", "dis_doseunit_conversion[status_id]"
    end
  end
end
