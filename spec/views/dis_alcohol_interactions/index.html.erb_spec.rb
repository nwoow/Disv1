require 'rails_helper'

RSpec.describe "dis_alcohol_interactions/index", type: :view do
  before(:each) do
    assign(:dis_alcohol_interactions, [
      DisAlcoholInteraction.create!(
        :name => "Name",
        :description => "Description",
        :datasource_id => 1
      ),
      DisAlcoholInteraction.create!(
        :name => "Name",
        :description => "Description",
        :datasource_id => 1
      )
    ])
  end

  it "renders a list of dis_alcohol_interactions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
