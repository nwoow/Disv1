require 'rails_helper'

RSpec.describe "dis_doseforms/index", type: :view do
  before(:each) do
    assign(:dis_doseforms, [
      DisDoseform.create!(
        :id => 1,
        :name => "Name",
        :abbrev => "Abbrev",
        :status_id => 2
      ),
      DisDoseform.create!(
        :id => 1,
        :name => "Name",
        :abbrev => "Abbrev",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_doseforms" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbrev".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
