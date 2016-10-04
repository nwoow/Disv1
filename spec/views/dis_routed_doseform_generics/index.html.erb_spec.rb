require 'rails_helper'

RSpec.describe "dis_routed_doseform_generics/index", type: :view do
  before(:each) do
    assign(:dis_routed_doseform_generics, [
      DisRoutedDoseformGeneric.create!(
        :generic_id => 1,
        :rtd_gen_id => 2,
        :route_id => 3,
        :doseform_id => 4,
        :name => "Name",
        :monograph_id => 5,
        :status_id => 6,
        :release_status_id => 7,
        :is_combination => false
      ),
      DisRoutedDoseformGeneric.create!(
        :generic_id => 1,
        :rtd_gen_id => 2,
        :route_id => 3,
        :doseform_id => 4,
        :name => "Name",
        :monograph_id => 5,
        :status_id => 6,
        :release_status_id => 7,
        :is_combination => false
      )
    ])
  end

  it "renders a list of dis_routed_doseform_generics" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
