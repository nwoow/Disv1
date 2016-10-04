require 'rails_helper'

RSpec.describe "dis_nfi_schedules/show", type: :view do
  before(:each) do
    @dis_nfi_schedule = assign(:dis_nfi_schedule, DisNfiSchedule.create!(
      :name => "Name",
      :description => "Description",
      :datasource_id => 1,
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
