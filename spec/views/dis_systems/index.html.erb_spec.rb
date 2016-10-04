require 'rails_helper'

RSpec.describe "dis_systems/index", type: :view do
  before(:each) do
    assign(:dis_systems, [
      DisSystem.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      ),
      DisSystem.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_systems" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
