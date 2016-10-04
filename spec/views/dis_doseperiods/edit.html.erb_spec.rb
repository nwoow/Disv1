require 'rails_helper'

RSpec.describe "dis_doseperiods/edit", type: :view do
  before(:each) do
    @dis_doseperiod = assign(:dis_doseperiod, DisDoseperiod.create!(
      :name => "MyString",
      :is_common => false,
      :abbrev => "MyString",
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_doseperiod form" do
    render

    assert_select "form[action=?][method=?]", dis_doseperiod_path(@dis_doseperiod), "post" do

      assert_select "input#dis_doseperiod_name[name=?]", "dis_doseperiod[name]"

      assert_select "input#dis_doseperiod_is_common[name=?]", "dis_doseperiod[is_common]"

      assert_select "input#dis_doseperiod_abbrev[name=?]", "dis_doseperiod[abbrev]"

      assert_select "input#dis_doseperiod_status_id[name=?]", "dis_doseperiod[status_id]"

      assert_select "input#dis_doseperiod_datasource_id[name=?]", "dis_doseperiod[datasource_id]"
    end
  end
end
