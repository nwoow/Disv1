require 'rails_helper'

RSpec.describe "dis_nfi_schedules/new", type: :view do
  before(:each) do
    assign(:dis_nfi_schedule, DisNfiSchedule.new(
      :name => "MyString",
      :description => "MyString",
      :datasource_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_nfi_schedule form" do
    render

    assert_select "form[action=?][method=?]", dis_nfi_schedules_path, "post" do

      assert_select "input#dis_nfi_schedule_name[name=?]", "dis_nfi_schedule[name]"

      assert_select "input#dis_nfi_schedule_description[name=?]", "dis_nfi_schedule[description]"

      assert_select "input#dis_nfi_schedule_datasource_id[name=?]", "dis_nfi_schedule[datasource_id]"

      assert_select "input#dis_nfi_schedule_status_id[name=?]", "dis_nfi_schedule[status_id]"
    end
  end
end
