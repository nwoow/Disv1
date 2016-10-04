require 'rails_helper'

RSpec.describe "dis_statuses/edit", type: :view do
  before(:each) do
    @dis_status = assign(:dis_status, DisStatus.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit dis_status form" do
    render

    assert_select "form[action=?][method=?]", dis_status_path(@dis_status), "post" do

      assert_select "input#dis_status_name[name=?]", "dis_status[name]"
    end
  end
end
