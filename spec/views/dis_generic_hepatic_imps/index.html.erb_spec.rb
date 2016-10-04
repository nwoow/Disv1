require 'rails_helper'

RSpec.describe "dis_generic_hepatic_imps/index", type: :view do
  before(:each) do
    assign(:dis_generic_hepatic_imps, [
      DisGenericHepaticImp.create!(
        :generic_id => 1,
        :warning => "Warning",
        :description => "Description",
        :status_id => 2,
        :datasource_id => 3
      ),
      DisGenericHepaticImp.create!(
        :generic_id => 1,
        :warning => "Warning",
        :description => "Description",
        :status_id => 2,
        :datasource_id => 3
      )
    ])
  end

  it "renders a list of dis_generic_hepatic_imps" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Warning".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
