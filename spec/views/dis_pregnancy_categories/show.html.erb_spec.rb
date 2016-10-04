require 'rails_helper'

RSpec.describe "dis_pregnancy_categories/show", type: :view do
  before(:each) do
    @dis_pregnancy_category = assign(:dis_pregnancy_category, DisPregnancyCategory.create!(
      :id => 1,
      :name => "Name",
      :description => "Description",
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
