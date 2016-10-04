require 'rails_helper'

RSpec.describe "dis_indiastates/new", type: :view do
  before(:each) do
    assign(:dis_indiastate, DisIndiastate.new(
      :id => 1,
      :name => "MyString",
      :abbrev => "MyString"
    ))
  end

  it "renders new dis_indiastate form" do
    render

    assert_select "form[action=?][method=?]", dis_indiastates_path, "post" do

      assert_select "input#dis_indiastate_id[name=?]", "dis_indiastate[id]"

      assert_select "input#dis_indiastate_name[name=?]", "dis_indiastate[name]"

      assert_select "input#dis_indiastate_abbrev[name=?]", "dis_indiastate[abbrev]"
    end
  end
end
