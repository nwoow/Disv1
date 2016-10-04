require 'rails_helper'

RSpec.describe "dis_dispensable_generics/index", type: :view do
  before(:each) do
    assign(:dis_dispensable_generics, [
      DisDispensableGeneric.create!(
        :routed_doseform_generic_id => "",
        :strength => "Strength",
        :strength_doseunit_id => 1,
        :per_strength => "Per Strength",
        :per_doseunit_id => 2,
        :name => "Name",
        :release_status_id => 3,
        :status_id => 4,
        :datasource_id => 5
      ),
      DisDispensableGeneric.create!(
        :routed_doseform_generic_id => "",
        :strength => "Strength",
        :strength_doseunit_id => 1,
        :per_strength => "Per Strength",
        :per_doseunit_id => 2,
        :name => "Name",
        :release_status_id => 3,
        :status_id => 4,
        :datasource_id => 5
      )
    ])
  end

  it "renders a list of dis_dispensable_generics" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Strength".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Per Strength".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
