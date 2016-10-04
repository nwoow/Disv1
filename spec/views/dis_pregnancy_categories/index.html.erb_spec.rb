require 'rails_helper'

RSpec.describe "dis_pregnancy_categories/index", type: :view do
  before(:each) do
    assign(:dis_pregnancy_categories, [
      DisPregnancyCategory.create!(
        :id => 1,
        :name => "Name",
        :description => "Description",
        :status_id => 2
      ),
      DisPregnancyCategory.create!(
        :id => 1,
        :name => "Name",
        :description => "Description",
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_pregnancy_categories" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
