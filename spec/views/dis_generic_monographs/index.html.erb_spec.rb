require 'rails_helper'

RSpec.describe "dis_generic_monographs/index", type: :view do
  before(:each) do
    assign(:dis_generic_monographs, [
      DisGenericMonograph.create!(
        :generic_id => 1,
        :dose => "Dose",
        :contraindication => "Contraindication",
        :precaution => "Precaution",
        :adverse_effect => "Adverse Effect",
        :storage => "Storage",
        :datasource_id => 2,
        :status_id => 3
      ),
      DisGenericMonograph.create!(
        :generic_id => 1,
        :dose => "Dose",
        :contraindication => "Contraindication",
        :precaution => "Precaution",
        :adverse_effect => "Adverse Effect",
        :storage => "Storage",
        :datasource_id => 2,
        :status_id => 3
      )
    ])
  end

  it "renders a list of dis_generic_monographs" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Dose".to_s, :count => 2
    assert_select "tr>td", :text => "Contraindication".to_s, :count => 2
    assert_select "tr>td", :text => "Precaution".to_s, :count => 2
    assert_select "tr>td", :text => "Adverse Effect".to_s, :count => 2
    assert_select "tr>td", :text => "Storage".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
