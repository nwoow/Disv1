require 'rails_helper'

RSpec.describe "dis_indications/new", type: :view do
  before(:each) do
    assign(:dis_indication, DisIndication.new(
      :id => 1,
      :description => "MyString",
      :status_id => 1
    ))
  end

  it "renders new dis_indication form" do
    render

    assert_select "form[action=?][method=?]", dis_indications_path, "post" do

      assert_select "input#dis_indication_id[name=?]", "dis_indication[id]"

      assert_select "input#dis_indication_description[name=?]", "dis_indication[description]"

      assert_select "input#dis_indication_status_id[name=?]", "dis_indication[status_id]"
    end
  end
end
