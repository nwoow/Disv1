require 'rails_helper'

RSpec.describe "dis_generic_indications/index", type: :view do
  before(:each) do
    assign(:dis_generic_indications, [
      DisGenericIndication.create!(
        :id => 1,
        :generic_id => 2,
        :status_id => 3,
        :indication_id => 4
      ),
      DisGenericIndication.create!(
        :id => 1,
        :generic_id => 2,
        :status_id => 3,
        :indication_id => 4
      )
    ])
  end

  it "renders a list of dis_generic_indications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
