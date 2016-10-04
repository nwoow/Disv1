require 'rails_helper'

RSpec.describe "dis_indications/index", type: :view do
  before(:each) do
    assign(:dis_indications, [
      DisIndication.create!(
        :id => 1,
        :description => "Description",
        :status_id => 2
      ),
      DisIndication.create!(
        :id => 1,
        :description => "Description",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_indications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
