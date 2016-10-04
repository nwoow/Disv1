require 'rails_helper'

RSpec.describe "dis_nfi_schedules/index", type: :view do
  before(:each) do
    assign(:dis_nfi_schedules, [
      DisNfiSchedule.create!(
        :name => "Name",
        :description => "Description",
        :datasource_id => 1,
        :status_id => 2
      ),
      DisNfiSchedule.create!(
        :name => "Name",
        :description => "Description",
        :datasource_id => 1,
        :status_id => 2
      )
    ])
  end

  it "renders a list of dis_nfi_schedules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
