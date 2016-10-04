require 'rails_helper'

RSpec.describe "dis_doseperiods/index", type: :view do
  before(:each) do
    assign(:dis_doseperiods, [
      DisDoseperiod.create!(
        :name => "Name",
        :is_common => false,
        :abbrev => "Abbrev",
        :status_id => 1,
        :datasource_id => 2
      ),
      DisDoseperiod.create!(
        :name => "Name",
        :is_common => false,
        :abbrev => "Abbrev",
        :status_id => 1,
        :datasource_id => 2
      )
    ])
  end

  it "renders a list of dis_doseperiods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Abbrev".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
