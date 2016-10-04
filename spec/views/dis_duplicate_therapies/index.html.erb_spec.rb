require 'rails_helper'

RSpec.describe "dis_duplicate_therapies/index", type: :view do
  before(:each) do
    assign(:dis_duplicate_therapies, [
      DisDuplicateTherapy.create!(
        :generic_id1 => 1,
        :generic_id2 => 2,
        :status_id => 3,
        :datasource_id => 4
      ),
      DisDuplicateTherapy.create!(
        :generic_id1 => 1,
        :generic_id2 => 2,
        :status_id => 3,
        :datasource_id => 4
      )
    ])
  end

  it "renders a list of dis_duplicate_therapies" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
