require 'rails_helper'

RSpec.describe "dis_ingredients/index", type: :view do
  before(:each) do
    assign(:dis_ingredients, [
      DisIngredient.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      ),
      DisIngredient.create!(
        :id => 1,
        :name => "Name",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_ingredients" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
