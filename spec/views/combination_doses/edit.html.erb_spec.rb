require 'rails_helper'

RSpec.describe "combination_doses/edit", type: :view do
  before(:each) do
    @combination_dose = assign(:combination_dose, CombinationDose.create!(
      :combination_doses_id => 1,
      :combination_dose_id => 1,
      :combination_dose_name => "MyString",
      :status => false
    ))
  end

  it "renders the edit combination_dose form" do
    render

    assert_select "form[action=?][method=?]", combination_dose_path(@combination_dose), "post" do

      assert_select "input#combination_dose_combination_doses_id[name=?]", "combination_dose[combination_doses_id]"

      assert_select "input#combination_dose_combination_dose_id[name=?]", "combination_dose[combination_dose_id]"

      assert_select "input#combination_dose_combination_dose_name[name=?]", "combination_dose[combination_dose_name]"

      assert_select "input#combination_dose_status[name=?]", "combination_dose[status]"
    end
  end
end
