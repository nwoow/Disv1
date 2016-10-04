require 'rails_helper'

RSpec.describe "dis_indiastates/edit", type: :view do
  before(:each) do
    @dis_indiastate = assign(:dis_indiastate, DisIndiastate.create!(
      :id => 1,
      :name => "MyString",
      :abbrev => "MyString"
    ))
  end

  it "renders the edit dis_indiastate form" do
    render

    assert_select "form[action=?][method=?]", dis_indiastate_path(@dis_indiastate), "post" do

      assert_select "input#dis_indiastate_id[name=?]", "dis_indiastate[id]"

      assert_select "input#dis_indiastate_name[name=?]", "dis_indiastate[name]"

      assert_select "input#dis_indiastate_abbrev[name=?]", "dis_indiastate[abbrev]"
    end
  end
end
