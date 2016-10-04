require 'rails_helper'

RSpec.describe "dis_generic_alcohol_interactions/index", type: :view do
  before(:each) do
    assign(:dis_generic_alcohol_interactions, [
      DisGenericAlcoholInteraction.create!(
        :generic_id => 1,
        :alcohol_interaction_id => 2,
        :status_id => 3,
        :datasource_id => 4
      ),
      DisGenericAlcoholInteraction.create!(
        :generic_id => 1,
        :alcohol_interaction_id => 2,
        :status_id => 3,
        :datasource_id => 4
      )
    ])
  end

  it "renders a list of dis_generic_alcohol_interactions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
