require 'rails_helper'

RSpec.describe "dis_doseunit_convertions/index", type: :view do
  before(:each) do
    assign(:dis_doseunit_convertions, [
      DisDoseunitConvertion.create!(
        :id => "",
        :from_doseunit_id => 1,
        :to_doseunit_id => 2,
        :conv_factor => "",
        :status_id => 3
      ),
      DisDoseunitConvertion.create!(
        :id => "",
        :from_doseunit_id => 1,
        :to_doseunit_id => 2,
        :conv_factor => "",
        :status_id => 3
      )
    ])
  end

  it "renders a list of dis_doseunit_convertions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
