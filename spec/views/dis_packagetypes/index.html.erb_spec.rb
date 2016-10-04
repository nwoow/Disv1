require 'rails_helper'

RSpec.describe "dis_packagetypes/index", type: :view do
  before(:each) do
    assign(:dis_packagetypes, [
      DisPackagetype.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      ),
      DisPackagetype.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_packagetypes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
