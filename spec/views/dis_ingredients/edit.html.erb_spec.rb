require 'rails_helper'

RSpec.describe "dis_ingredients/edit", type: :view do
  before(:each) do
    @dis_ingredient = assign(:dis_ingredient, DisIngredient.create!(
      :id => 1,
      :name => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_ingredient form" do
    render

    assert_select "form[action=?][method=?]", dis_ingredient_path(@dis_ingredient), "post" do

      assert_select "input#dis_ingredient_id[name=?]", "dis_ingredient[id]"

      assert_select "input#dis_ingredient_name[name=?]", "dis_ingredient[name]"

      assert_select "input#dis_ingredient_status_id[name=?]", "dis_ingredient[status_id]"
    end
  end
end
