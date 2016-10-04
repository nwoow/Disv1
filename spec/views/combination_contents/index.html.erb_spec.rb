require 'rails_helper'

RSpec.describe "combination_contents/index", type: :view do
  before(:each) do
    assign(:combination_contents, [
      CombinationContent.create!(
        :combination_contents_id => 1,
        :combination_generic_id => 2,
        :constituent_generic_id => 3,
        :constituent_strength => "Constituent Strength",
        :uom_id => 4,
        :combination_dose_id => 5,
        :data_source_id => 6,
        :status => false
      ),
      CombinationContent.create!(
        :combination_contents_id => 1,
        :combination_generic_id => 2,
        :constituent_generic_id => 3,
        :constituent_strength => "Constituent Strength",
        :uom_id => 4,
        :combination_dose_id => 5,
        :data_source_id => 6,
        :status => false
      )
    ])
  end

  it "renders a list of combination_contents" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Constituent Strength".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
