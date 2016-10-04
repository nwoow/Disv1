require 'rails_helper'

RSpec.describe "dis_generic_contraceptive_interactions/edit", type: :view do
  before(:each) do
    @dis_generic_contraceptive_interaction = assign(:dis_generic_contraceptive_interaction, DisGenericContraceptiveInteraction.create!(
      :generic_id => 1,
      :description => "MyString",
      :datasource_id => 1,
      :statud_id => 1
    ))
  end

  it "renders the edit dis_generic_contraceptive_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_contraceptive_interaction_path(@dis_generic_contraceptive_interaction), "post" do

      assert_select "input#dis_generic_contraceptive_interaction_generic_id[name=?]", "dis_generic_contraceptive_interaction[generic_id]"

      assert_select "input#dis_generic_contraceptive_interaction_description[name=?]", "dis_generic_contraceptive_interaction[description]"

      assert_select "input#dis_generic_contraceptive_interaction_datasource_id[name=?]", "dis_generic_contraceptive_interaction[datasource_id]"

      assert_select "input#dis_generic_contraceptive_interaction_statud_id[name=?]", "dis_generic_contraceptive_interaction[statud_id]"
    end
  end
end
