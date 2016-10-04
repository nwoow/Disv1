require 'rails_helper'

RSpec.describe "dis_additive_frequencies/index", type: :view do
  before(:each) do
    assign(:dis_additive_frequencies, [
      DisAdditiveFrequency.create!(
        :name => "Name",
        :frequency_value => 1,
        :status_id => 2
      ),
      DisAdditiveFrequency.create!(
        :name => "Name",
        :frequency_value => 1,
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_additive_frequencies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
