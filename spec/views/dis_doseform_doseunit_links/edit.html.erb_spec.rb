require 'rails_helper'

RSpec.describe "dis_doseform_doseunit_links/edit", type: :view do
  before(:each) do
    @dis_doseform_doseunit_link = assign(:dis_doseform_doseunit_link, DisDoseformDoseunitLink.create!(
      :doseform_id => 1,
      :doseunit_id => 1,
      :is_default => false,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_doseform_doseunit_link form" do
    render

    assert_select "form[action=?][method=?]", dis_doseform_doseunit_link_path(@dis_doseform_doseunit_link), "post" do

      assert_select "input#dis_doseform_doseunit_link_doseform_id[name=?]", "dis_doseform_doseunit_link[doseform_id]"

      assert_select "input#dis_doseform_doseunit_link_doseunit_id[name=?]", "dis_doseform_doseunit_link[doseunit_id]"

      assert_select "input#dis_doseform_doseunit_link_is_default[name=?]", "dis_doseform_doseunit_link[is_default]"

      assert_select "input#dis_doseform_doseunit_link_status_id[name=?]", "dis_doseform_doseunit_link[status_id]"

      assert_select "input#dis_doseform_doseunit_link_datasource_id[name=?]", "dis_doseform_doseunit_link[datasource_id]"
    end
  end
end
