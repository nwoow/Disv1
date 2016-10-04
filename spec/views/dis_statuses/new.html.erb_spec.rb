require 'rails_helper'

RSpec.describe "dis_statuses/new", type: :view do
  before(:each) do
    assign(:dis_status, DisStatus.new(
      :name => "MyString"
    ))
  end

  it "renders new dis_status form" do
    render

    assert_select "form[action=?][method=?]", dis_statuses_path, "post" do

      assert_select "input#dis_status_name[name=?]", "dis_status[name]"
    end
  end
end
