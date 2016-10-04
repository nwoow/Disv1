require 'rails_helper'

RSpec.describe "dis_datasources/index", type: :view do
  before(:each) do
    assign(:dis_datasources, [
      DisDatasource.create!(
        :name => "Name"
      ),
      DisDatasource.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of dis_datasources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
