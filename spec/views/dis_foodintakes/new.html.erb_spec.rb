require 'rails_helper'

RSpec.describe "dis_foodintakes/new", type: :view do
  before(:each) do
    assign(:dis_foodintake, DisFoodintake.new(
      :id => 1,
      :description => "MyString",
      :status_id => 1
    ))
  end

  it "renders new dis_foodintake form" do
    render

    assert_select "form[action=?][method=?]", dis_foodintakes_path, "post" do

      assert_select "input#dis_foodintake_id[name=?]", "dis_foodintake[id]"

      assert_select "input#dis_foodintake_description[name=?]", "dis_foodintake[description]"

      assert_select "input#dis_foodintake_status_id[name=?]", "dis_foodintake[status_id]"
    end
  end
end
