require 'rails_helper'

RSpec.describe "dis_systems/new", type: :view do
  before(:each) do
    assign(:dis_system, DisSystem.new(
      :id => 1,
      :name => "MyString",
      :status_id => 1
    ))
  end

  it "renders new dis_system form" do
    render

    assert_select "form[action=?][method=?]", dis_systems_path, "post" do

      assert_select "input#dis_system_id[name=?]", "dis_system[id]"

      assert_select "input#dis_system_name[name=?]", "dis_system[name]"

      assert_select "input#dis_system_status_id[name=?]", "dis_system[status_id]"
    end
  end
end
