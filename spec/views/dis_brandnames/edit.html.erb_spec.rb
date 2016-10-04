require 'rails_helper'

RSpec.describe "dis_brandnames/edit", type: :view do
  before(:each) do
    @dis_brandname = assign(:dis_brandname, DisBrandname.create!(
      :id => 1,
      :name => "MyString",
      :release_status_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_brandname form" do
    render

    assert_select "form[action=?][method=?]", dis_brandname_path(@dis_brandname), "post" do

      assert_select "input#dis_brandname_id[name=?]", "dis_brandname[id]"

      assert_select "input#dis_brandname_name[name=?]", "dis_brandname[name]"

      assert_select "input#dis_brandname_release_status_id[name=?]", "dis_brandname[release_status_id]"

      assert_select "input#dis_brandname_status_id[name=?]", "dis_brandname[status_id]"
    end
  end
end
