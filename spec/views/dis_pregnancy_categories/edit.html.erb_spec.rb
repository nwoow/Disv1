require 'rails_helper'

RSpec.describe "dis_pregnancy_categories/edit", type: :view do
  before(:each) do
    @dis_pregnancy_category = assign(:dis_pregnancy_category, DisPregnancyCategory.create!(
      :id => 1,
      :name => "MyString",
      :description => "MyString",
      :status_id => 1
    ))
  end

  it "renders the edit dis_pregnancy_category form" do
    render

    assert_select "form[action=?][method=?]", dis_pregnancy_category_path(@dis_pregnancy_category), "post" do

      assert_select "input#dis_pregnancy_category_id[name=?]", "dis_pregnancy_category[id]"

      assert_select "input#dis_pregnancy_category_name[name=?]", "dis_pregnancy_category[name]"

      assert_select "input#dis_pregnancy_category_description[name=?]", "dis_pregnancy_category[description]"

      assert_select "input#dis_pregnancy_category_status_id[name=?]", "dis_pregnancy_category[status_id]"
    end
  end
end
