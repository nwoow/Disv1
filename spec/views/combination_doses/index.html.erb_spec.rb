require 'rails_helper'

RSpec.describe "combination_doses/index", type: :view do
  before(:each) do
    assign(:combination_doses, [
      CombinationDose.create!(
        :combination_doses_id => 1,
        :combination_dose_id => 2,
        :combination_dose_name => "Combination Dose Name",
        :status => false
      ),
      CombinationDose.create!(
        :combination_doses_id => 1,
        :combination_dose_id => 2,
        :combination_dose_name => "Combination Dose Name",
        :status => false
      )
    ])
  end

  it "renders a list of combination_doses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Combination Dose Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
