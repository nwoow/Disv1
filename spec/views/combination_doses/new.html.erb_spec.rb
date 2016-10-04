require 'rails_helper'

RSpec.describe "combination_doses/new", type: :view do
  before(:each) do
    assign(:combination_dose, CombinationDose.new(
      :combination_doses_id => 1,
      :combination_dose_id => 1,
      :combination_dose_name => "MyString",
      :status => false
    ))
  end

  it "renders new combination_dose form" do
    render

    assert_select "form[action=?][method=?]", combination_doses_path, "post" do

      assert_select "input#combination_dose_combination_doses_id[name=?]", "combination_dose[combination_doses_id]"

      assert_select "input#combination_dose_combination_dose_id[name=?]", "combination_dose[combination_dose_id]"

      assert_select "input#combination_dose_combination_dose_name[name=?]", "combination_dose[combination_dose_name]"

      assert_select "input#combination_dose_status[name=?]", "combination_dose[status]"
    end
  end
end
