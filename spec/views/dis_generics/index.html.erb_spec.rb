require 'rails_helper'

RSpec.describe "dis_generics/index", type: :view do
  before(:each) do
    assign(:dis_generics, [
      DisGeneric.create!(
        :name => "Name",
        :is_combination => false,
        :rxcui => 1,
        :status_id => 2,
        :food_id => 3,
        :hepatic_id => 4,
        :renal_imp_id => 5,
        :release_status_id => 6,
        :is_essential => false
      ),
      DisGeneric.create!(
        :name => "Name",
        :is_combination => false,
        :rxcui => 1,
        :status_id => 2,
        :food_id => 3,
        :hepatic_id => 4,
        :renal_imp_id => 5,
        :release_status_id => 6,
        :is_essential => false
      )
    ])
  end

  it "renders a list of dis_generics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
