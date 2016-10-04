require 'rails_helper'

RSpec.describe "dis_alcohol_interactions/edit", type: :view do
  before(:each) do
    @dis_alcohol_interaction = assign(:dis_alcohol_interaction, DisAlcoholInteraction.create!(
      :name => "MyString",
      :description => "MyString",
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_alcohol_interaction form" do
    render

    assert_select "form[action=?][method=?]", dis_alcohol_interaction_path(@dis_alcohol_interaction), "post" do

      assert_select "input#dis_alcohol_interaction_name[name=?]", "dis_alcohol_interaction[name]"

      assert_select "input#dis_alcohol_interaction_description[name=?]", "dis_alcohol_interaction[description]"

      assert_select "input#dis_alcohol_interaction_datasource_id[name=?]", "dis_alcohol_interaction[datasource_id]"
    end
  end
end
