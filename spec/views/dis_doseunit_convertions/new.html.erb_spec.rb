require 'rails_helper'

RSpec.describe "dis_doseunit_convertions/new", type: :view do
  before(:each) do
    assign(:dis_doseunit_convertion, DisDoseunitConvertion.new(
      :id => "",
      :from_doseunit_id => 1,
      :to_doseunit_id => 1,
      :conv_factor => "",
      :status_id => 1
    ))
  end

  it "renders new dis_doseunit_convertion form" do
    render

    assert_select "form[action=?][method=?]", dis_doseunit_convertions_path, "post" do

      assert_select "input#dis_doseunit_convertion_id[name=?]", "dis_doseunit_convertion[id]"

      assert_select "input#dis_doseunit_convertion_from_doseunit_id[name=?]", "dis_doseunit_convertion[from_doseunit_id]"

      assert_select "input#dis_doseunit_convertion_to_doseunit_id[name=?]", "dis_doseunit_convertion[to_doseunit_id]"

      assert_select "input#dis_doseunit_convertion_conv_factor[name=?]", "dis_doseunit_convertion[conv_factor]"

      assert_select "input#dis_doseunit_convertion_status_id[name=?]", "dis_doseunit_convertion[status_id]"
    end
  end
end
