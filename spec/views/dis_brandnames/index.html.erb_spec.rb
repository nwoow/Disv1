require 'rails_helper'

RSpec.describe "dis_brandnames/index", type: :view do
  before(:each) do
    assign(:dis_brandnames, [
      DisBrandname.create!(
        :id => 1,
        :name => "Name",
        :release_status_id => 2,
        :status_id => 3
      ),
      DisBrandname.create!(
        :id => 1,
        :name => "Name",
        :release_status_id => 2,
        :status_id => 3
      )
    ])
  end

  it "renders a list of dis_brandnames" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
