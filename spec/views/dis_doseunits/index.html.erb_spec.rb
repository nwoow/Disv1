require 'rails_helper'

RSpec.describe "dis_doseunits/index", type: :view do
  before(:each) do
    assign(:dis_doseunits, [
      DisDoseunit.create!(
        :id => "",
        :name => "Name",
        :abbrev => "Abbrev",
        :dosetype_id => 1,
        :status_id => 2
      ),
      DisDoseunit.create!(
        :id => "",
        :name => "Name",
        :abbrev => "Abbrev",
        :dosetype_id => 1,
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_doseunits" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbrev".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
