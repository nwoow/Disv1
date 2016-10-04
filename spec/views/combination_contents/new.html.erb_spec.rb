require 'rails_helper'

RSpec.describe "combination_contents/new", type: :view do
  before(:each) do
    assign(:combination_content, CombinationContent.new(
      :combination_contents_id => 1,
      :combination_generic_id => 1,
      :constituent_generic_id => 1,
      :constituent_strength => "MyString",
      :uom_id => 1,
      :combination_dose_id => 1,
      :data_source_id => 1,
      :status => false
    ))
  end

  it "renders new combination_content form" do
    render

    assert_select "form[action=?][method=?]", combination_contents_path, "post" do

      assert_select "input#combination_content_combination_contents_id[name=?]", "combination_content[combination_contents_id]"

      assert_select "input#combination_content_combination_generic_id[name=?]", "combination_content[combination_generic_id]"

      assert_select "input#combination_content_constituent_generic_id[name=?]", "combination_content[constituent_generic_id]"

      assert_select "input#combination_content_constituent_strength[name=?]", "combination_content[constituent_strength]"

      assert_select "input#combination_content_uom_id[name=?]", "combination_content[uom_id]"

      assert_select "input#combination_content_combination_dose_id[name=?]", "combination_content[combination_dose_id]"

      assert_select "input#combination_content_data_source_id[name=?]", "combination_content[data_source_id]"

      assert_select "input#combination_content_status[name=?]", "combination_content[status]"
    end
  end
end
