require 'rails_helper'

RSpec.describe "dis_therapueticgroups/index", type: :view do
  before(:each) do
    assign(:dis_therapueticgroups, [
      DisTherapueticgroup.create!(
        :id => 1,
        :name => "Name",
        :system_id => 2,
        :status_id => 3
      ),
      DisTherapueticgroup.create!(
        :id => 1,
        :name => "Name",
        :system_id => 2,
        :status_id => 3
      )
    ])
  end

  it "renders a list of dis_therapueticgroups" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
