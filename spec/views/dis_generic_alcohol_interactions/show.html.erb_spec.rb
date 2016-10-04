require 'rails_helper'

RSpec.describe "dis_generic_alcohol_interactions/show", type: :view do
  before(:each) do
    @dis_generic_alcohol_interaction = assign(:dis_generic_alcohol_interaction, DisGenericAlcoholInteraction.create!(
      :generic_id => 1,
      :alcohol_interaction_id => 2,
      :status_id => 3,
      :datasource_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
