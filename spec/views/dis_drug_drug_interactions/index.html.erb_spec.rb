require 'rails_helper'

RSpec.describe "dis_drug_drug_interactions/index", type: :view do
  before(:each) do
    assign(:dis_drug_drug_interactions, [
      DisDrugDrugInteraction.create!(
        :generic_id1 => 1,
        :generic_id2 => 2,
        :description => "Description",
        :severity => 3,
        :status_id => 4,
        :datasource_id => 5
      ),
      DisDrugDrugInteraction.create!(
        :generic_id1 => 1,
        :generic_id2 => 2,
        :description => "Description",
        :severity => 3,
        :status_id => 4,
        :datasource_id => 5
      )
    ])
  end

  it "renders a list of dis_drug_drug_interactions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
