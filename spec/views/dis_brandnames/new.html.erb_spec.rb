require 'rails_helper'

RSpec.describe "dis_brandnames/new", type: :view do
  before(:each) do
    assign(:dis_brandname, DisBrandname.new(
      :id => 1,
      :name => "MyString",
      :release_status_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_brandname form" do
    render

    assert_select "form[action=?][method=?]", dis_brandnames_path, "post" do

      assert_select "input#dis_brandname_id[name=?]", "dis_brandname[id]"

      assert_select "input#dis_brandname_name[name=?]", "dis_brandname[name]"

      assert_select "input#dis_brandname_release_status_id[name=?]", "dis_brandname[release_status_id]"

      assert_select "input#dis_brandname_status_id[name=?]", "dis_brandname[status_id]"
    end
  end
end
