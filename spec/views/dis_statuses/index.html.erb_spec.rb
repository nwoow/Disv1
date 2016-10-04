require 'rails_helper'

RSpec.describe "dis_statuses/index", type: :view do
  before(:each) do
    assign(:dis_statuses, [
      DisStatus.create!(
        :name => "Name"
      ),
      DisStatus.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of dis_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
