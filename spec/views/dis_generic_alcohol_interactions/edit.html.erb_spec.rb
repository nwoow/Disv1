require 'rails_helper'

RSpec.describe "dis_generic_alcohol_interactions/edit", type: :view do
  before(:each) do
    @dis_generic_alcohol_interaction = assign(:dis_generic_alcohol_interaction, DisGenericAlcoholInteraction.create!(
      :generic_id => 1,
      :alcohol_interaction_id => 1,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_generic_alcohol_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_alcohol_interaction_path(@dis_generic_alcohol_interaction), "post" do

      assert_select "input#dis_generic_alcohol_interaction_generic_id[name=?]", "dis_generic_alcohol_interaction[generic_id]"

      assert_select "input#dis_generic_alcohol_interaction_alcohol_interaction_id[name=?]", "dis_generic_alcohol_interaction[alcohol_interaction_id]"

      assert_select "input#dis_generic_alcohol_interaction_status_id[name=?]", "dis_generic_alcohol_interaction[status_id]"

      assert_select "input#dis_generic_alcohol_interaction_datasource_id[name=?]", "dis_generic_alcohol_interaction[datasource_id]"
    end
  end
end
