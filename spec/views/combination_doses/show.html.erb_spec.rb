require 'rails_helper'

RSpec.describe "combination_doses/show", type: :view do
  before(:each) do
    @combination_dose = assign(:combination_dose, CombinationDose.create!(
      :combination_doses_id => 1,
      :combination_dose_id => 2,
      :combination_dose_name => "Combination Dose Name",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Combination Dose Name/)
    expect(rendered).to match(/false/)
  end
end
