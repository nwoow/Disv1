require 'rails_helper'

RSpec.describe "dis_generic_contraceptive_interactions/index", type: :view do
  before(:each) do
    assign(:dis_generic_contraceptive_interactions, [
      DisGenericContraceptiveInteraction.create!(
        :generic_id => 1,
        :description => "Description",
        :datasource_id => 2,
        :statud_id => 3
      ),
      DisGenericContraceptiveInteraction.create!(
        :generic_id => 1,
        :description => "Description",
        :datasource_id => 2,
        :statud_id => 3
      )
    ])
  end

  it "renders a list of dis_generic_contraceptive_interactions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
