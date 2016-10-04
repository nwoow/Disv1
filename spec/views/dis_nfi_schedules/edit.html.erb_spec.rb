require 'rails_helper'

RSpec.describe "dis_nfi_schedules/edit", type: :view do
  before(:each) do
    @dis_nfi_schedule = assign(:dis_nfi_schedule, DisNfiSchedule.create!(
      :name => "MyString",
      :description => "MyString",
      :datasource_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_nfi_schedule form" do
    render

    assert_select "form[action=?][method=?]", dis_nfi_schedule_path(@dis_nfi_schedule), "post" do

      assert_select "input#dis_nfi_schedule_name[name=?]", "dis_nfi_schedule[name]"

      assert_select "input#dis_nfi_schedule_description[name=?]", "dis_nfi_schedule[description]"

      assert_select "input#dis_nfi_schedule_datasource_id[name=?]", "dis_nfi_schedule[datasource_id]"

      assert_select "input#dis_nfi_schedule_status_id[name=?]", "dis_nfi_schedule[status_id]"
    end
  end
end
