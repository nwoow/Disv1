require 'rails_helper'

RSpec.describe "combination_contents/show", type: :view do
  before(:each) do
    @combination_content = assign(:combination_content, CombinationContent.create!(
      :combination_contents_id => 1,
      :combination_generic_id => 2,
      :constituent_generic_id => 3,
      :constituent_strength => "Constituent Strength",
      :uom_id => 4,
      :combination_dose_id => 5,
      :data_source_id => 6,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Constituent Strength/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
  end
end
