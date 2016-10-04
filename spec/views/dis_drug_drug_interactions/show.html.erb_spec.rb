require 'rails_helper'

RSpec.describe "dis_drug_drug_interactions/show", type: :view do
  before(:each) do
    @dis_drug_drug_interaction = assign(:dis_drug_drug_interaction, DisDrugDrugInteraction.create!(
      :generic_id1 => 1,
      :generic_id2 => 2,
      :description => "Description",
      :severity => 3,
      :status_id => 4,
      :datasource_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
