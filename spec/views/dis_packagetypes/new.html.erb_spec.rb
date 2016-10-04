require 'rails_helper'

RSpec.describe "dis_packagetypes/new", type: :view do
  before(:each) do
    assign(:dis_packagetype, DisPackagetype.new(
      :id => 1,
      :name => "MyString",
      :status_id => 1
    ))
  end

  it "renders new dis_packagetype form" do
    render

    assert_select "form[action=?][method=?]", dis_packagetypes_path, "post" do

      assert_select "input#dis_packagetype_id[name=?]", "dis_packagetype[id]"

      assert_select "input#dis_packagetype_name[name=?]", "dis_packagetype[name]"

      assert_select "input#dis_packagetype_status_id[name=?]", "dis_packagetype[status_id]"
    end
  end
end
