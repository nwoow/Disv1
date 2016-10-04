require 'rails_helper'

RSpec.describe "dis_routes/index", type: :view do
  before(:each) do
    assign(:dis_routes, [
      DisRoute.create!(
        :id => 1,
        :name => "Name",
        :abbrev => 2,
        :adverb => 3,
        :status_id => 4
      ),
      DisRoute.create!(
        :id => 1,
        :name => "Name",
        :abbrev => 2,
        :adverb => 3,
        :status_id => 4
      )
    ])
  end

  it "renders a list of dis_routes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
