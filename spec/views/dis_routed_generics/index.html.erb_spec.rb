require 'rails_helper'

RSpec.describe "dis_routed_generics/index", type: :view do
  before(:each) do
    assign(:dis_routed_generics, [
      DisRoutedGeneric.create!(
        :id => 1,
        :name => "Name",
        :generic_id => 2,
        :route_id => 3,
        :is_combination => false,
        :pregnancy_category_id => 4,
        :release_status_id => 5,
        :status_id => 6
      ),
      DisRoutedGeneric.create!(
        :id => 1,
        :name => "Name",
        :generic_id => 2,
        :route_id => 3,
        :is_combination => false,
        :pregnancy_category_id => 4,
        :release_status_id => 5,
        :status_id => 6
      )
    ])
  end

  it "renders a list of dis_routed_generics" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
