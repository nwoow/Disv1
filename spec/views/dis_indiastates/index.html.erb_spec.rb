require 'rails_helper'

RSpec.describe "dis_indiastates/index", type: :view do
  before(:each) do
    assign(:dis_indiastates, [
      DisIndiastate.create!(
        :id => 1,
        :name => "Name",
        :abbrev => "Abbrev"
      ),
      DisIndiastate.create!(
        :id => 1,
        :name => "Name",
        :abbrev => "Abbrev"
      )
    ])
  end

  it "renders a list of dis_indiastates" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbrev".to_s, :count => 2
  end
end
