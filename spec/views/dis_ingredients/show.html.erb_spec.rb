require 'rails_helper'

RSpec.describe "dis_ingredients/show", type: :view do
  before(:each) do
    @dis_ingredient = assign(:dis_ingredient, DisIngredient.create!(
      :id => 1,
      :name => "Name",
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
