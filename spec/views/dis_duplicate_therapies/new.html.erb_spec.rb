require 'rails_helper'

RSpec.describe "dis_duplicate_therapies/new", type: :view do
  before(:each) do
    assign(:dis_duplicate_therapy, DisDuplicateTherapy.new(
      :generic_id1 => 1,
      :generic_id2 => 1,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders new dis_duplicate_therapy form" do
    render

    assert_select "form[action=?][method=?]", dis_duplicate_therapies_path, "post" do

      assert_select "input#dis_duplicate_therapy_generic_id1[name=?]", "dis_duplicate_therapy[generic_id1]"

      assert_select "input#dis_duplicate_therapy_generic_id2[name=?]", "dis_duplicate_therapy[generic_id2]"

      assert_select "input#dis_duplicate_therapy_status_id[name=?]", "dis_duplicate_therapy[status_id]"

      assert_select "input#dis_duplicate_therapy_datasource_id[name=?]", "dis_duplicate_therapy[datasource_id]"
    end
  end
end
