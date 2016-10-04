require 'rails_helper'

RSpec.describe "dis_doseform_doseunit_links/index", type: :view do
  before(:each) do
    assign(:dis_doseform_doseunit_links, [
      DisDoseformDoseunitLink.create!(
        :doseform_id => 1,
        :doseunit_id => 2,
        :is_default => false,
        :status_id => 3,
        :datasource_id => 4
      ),
      DisDoseformDoseunitLink.create!(
        :doseform_id => 1,
        :doseunit_id => 2,
        :is_default => false,
        :status_id => 3,
        :datasource_id => 4
      )
    ])
  end

  it "renders a list of dis_doseform_doseunit_links" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
