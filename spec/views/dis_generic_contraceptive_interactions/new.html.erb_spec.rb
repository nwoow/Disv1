require 'rails_helper'

RSpec.describe "dis_generic_contraceptive_interactions/new", type: :view do
  before(:each) do
    assign(:dis_generic_contraceptive_interaction, DisGenericContraceptiveInteraction.new(
      :generic_id => 1,
      :description => "MyString",
      :datasource_id => 1,
      :statud_id => 1
    ))
  end

  it "renders new dis_generic_contraceptive_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_contraceptive_interactions_path, "post" do

      assert_select "input#dis_generic_contraceptive_interaction_generic_id[name=?]", "dis_generic_contraceptive_interaction[generic_id]"

      assert_select "input#dis_generic_contraceptive_interaction_description[name=?]", "dis_generic_contraceptive_interaction[description]"

      assert_select "input#dis_generic_contraceptive_interaction_datasource_id[name=?]", "dis_generic_contraceptive_interaction[datasource_id]"

      assert_select "input#dis_generic_contraceptive_interaction_statud_id[name=?]", "dis_generic_contraceptive_interaction[statud_id]"
    end
  end
end
