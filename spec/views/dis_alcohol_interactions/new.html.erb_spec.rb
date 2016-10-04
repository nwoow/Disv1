require 'rails_helper'

RSpec.describe "dis_alcohol_interactions/new", type: :view do
  before(:each) do
    assign(:dis_alcohol_interaction, DisAlcoholInteraction.new(
      :name => "MyString",
      :description => "MyString",
      :datasource_id => 1
    ))
  end

  it "renders new dis_alcohol_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_alcohol_interactions_path, "post" do

      assert_select "input#dis_alcohol_interaction_name[name=?]", "dis_alcohol_interaction[name]"

      assert_select "input#dis_alcohol_interaction_description[name=?]", "dis_alcohol_interaction[description]"

      assert_select "input#dis_alcohol_interaction_datasource_id[name=?]", "dis_alcohol_interaction[datasource_id]"
    end
  end
end
