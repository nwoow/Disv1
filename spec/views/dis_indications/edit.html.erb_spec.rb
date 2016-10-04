require 'rails_helper'

RSpec.describe "dis_indications/edit", type: :view do
  before(:each) do
    @dis_indication = assign(:dis_indication, DisIndication.create!(
      :id => 1,
      :description => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_indication form" do
    render

    assert_select "form[action=?][method=?]", dis_indication_path(@dis_indication), "post" do

      assert_select "input#dis_indication_id[name=?]", "dis_indication[id]"

      assert_select "input#dis_indication_description[name=?]", "dis_indication[description]"

      assert_select "input#dis_indication_status_id[name=?]", "dis_indication[status_id]"
    end
  end
end
