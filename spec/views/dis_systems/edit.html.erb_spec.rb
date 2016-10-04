require 'rails_helper'

RSpec.describe "dis_systems/edit", type: :view do
  before(:each) do
    @dis_system = assign(:dis_system, DisSystem.create!(
      :id => 1,
      :name => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_system form" do
    render

    assert_select "form[action=?][method=?]", dis_system_path(@dis_system), "post" do

      assert_select "input#dis_system_id[name=?]", "dis_system[id]"

      assert_select "input#dis_system_name[name=?]", "dis_system[name]"

      assert_select "input#dis_system_status_id[name=?]", "dis_system[status_id]"
    end
  end
end
