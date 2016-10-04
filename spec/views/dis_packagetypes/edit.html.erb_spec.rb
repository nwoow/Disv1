require 'rails_helper'

RSpec.describe "dis_packagetypes/edit", type: :view do
  before(:each) do
    @dis_packagetype = assign(:dis_packagetype, DisPackagetype.create!(
      :id => 1,
      :name => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_packagetype form" do
    render

    assert_select "form[action=?][method=?]", dis_packagetype_path(@dis_packagetype), "post" do

      assert_select "input#dis_packagetype_id[name=?]", "dis_packagetype[id]"

      assert_select "input#dis_packagetype_name[name=?]", "dis_packagetype[name]"

      assert_select "input#dis_packagetype_status_id[name=?]", "dis_packagetype[status_id]"
    end
  end
end
