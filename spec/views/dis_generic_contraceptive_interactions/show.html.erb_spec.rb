require 'rails_helper'

RSpec.describe "dis_generic_contraceptive_interactions/show", type: :view do
  before(:each) do
    @dis_generic_contraceptive_interaction = assign(:dis_generic_contraceptive_interaction, DisGenericContraceptiveInteraction.create!(
      :generic_id => 1,
      :description => "Description",
      :datasource_id => 2,
      :statud_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
