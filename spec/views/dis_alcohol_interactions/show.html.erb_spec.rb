require 'rails_helper'

RSpec.describe "dis_alcohol_interactions/show", type: :view do
  before(:each) do
    @dis_alcohol_interaction = assign(:dis_alcohol_interaction, DisAlcoholInteraction.create!(
      :name => "Name",
      :description => "Description",
      :datasource_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
  end
end
