require 'rails_helper'

RSpec.describe "dis_durations/edit", type: :view do
  before(:each) do
    @dis_duration = assign(:dis_duration, DisDuration.create!(
      :id => 1,
      :description => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_duration form" do
    render

    assert_select "form[action=?][method=?]", dis_duration_path(@dis_duration), "post" do

      assert_select "input#dis_duration_id[name=?]", "dis_duration[id]"

      assert_select "input#dis_duration_description[name=?]", "dis_duration[description]"

      assert_select "input#dis_duration_status_id[name=?]", "dis_duration[status_id]"
    end
  end
end
