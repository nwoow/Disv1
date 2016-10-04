require 'rails_helper'

RSpec.describe "dis_generic_monographs/new", type: :view do
  before(:each) do
    assign(:dis_generic_monograph, DisGenericMonograph.new(
      :generic_id => 1,
      :dose => "MyString",
      :contraindication => "MyString",
      :precaution => "MyString",
      :adverse_effect => "MyString",
      :storage => "MyString",
      :datasource_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_generic_monograph form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_monographs_path, "post" do

      assert_select "input#dis_generic_monograph_generic_id[name=?]", "dis_generic_monograph[generic_id]"

      assert_select "input#dis_generic_monograph_dose[name=?]", "dis_generic_monograph[dose]"

      assert_select "input#dis_generic_monograph_contraindication[name=?]", "dis_generic_monograph[contraindication]"

      assert_select "input#dis_generic_monograph_precaution[name=?]", "dis_generic_monograph[precaution]"

      assert_select "input#dis_generic_monograph_adverse_effect[name=?]", "dis_generic_monograph[adverse_effect]"

      assert_select "input#dis_generic_monograph_storage[name=?]", "dis_generic_monograph[storage]"

      assert_select "input#dis_generic_monograph_datasource_id[name=?]", "dis_generic_monograph[datasource_id]"

      assert_select "input#dis_generic_monograph_status_id[name=?]", "dis_generic_monograph[status_id]"
    end
  end
end
