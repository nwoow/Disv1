require 'rails_helper'

RSpec.describe "dis_drug_drug_interactions/new", type: :view do
  before(:each) do
    assign(:dis_drug_drug_interaction, DisDrugDrugInteraction.new(
      :generic_id1 => 1,
      :generic_id2 => 1,
      :description => "MyString",
      :severity => 1,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders new dis_drug_drug_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_drug_drug_interactions_path, "post" do

      assert_select "input#dis_drug_drug_interaction_generic_id1[name=?]", "dis_drug_drug_interaction[generic_id1]"

      assert_select "input#dis_drug_drug_interaction_generic_id2[name=?]", "dis_drug_drug_interaction[generic_id2]"

      assert_select "input#dis_drug_drug_interaction_description[name=?]", "dis_drug_drug_interaction[description]"

      assert_select "input#dis_drug_drug_interaction_severity[name=?]", "dis_drug_drug_interaction[severity]"

      assert_select "input#dis_drug_drug_interaction_status_id[name=?]", "dis_drug_drug_interaction[status_id]"

      assert_select "input#dis_drug_drug_interaction_datasource_id[name=?]", "dis_drug_drug_interaction[datasource_id]"
    end
  end
end
