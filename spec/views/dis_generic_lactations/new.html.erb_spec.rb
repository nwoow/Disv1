require 'rails_helper'

RSpec.describe "dis_generic_lactations/new", type: :view do
  before(:each) do
    assign(:dis_generic_lactation, DisGenericLactation.new(
      :generic_id => 1,
      :description => "MyString",
      :datasource_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_generic_lactation form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_lactations_path, "post" do

      assert_select "input#dis_generic_lactation_generic_id[name=?]", "dis_generic_lactation[generic_id]"

      assert_select "input#dis_generic_lactation_description[name=?]", "dis_generic_lactation[description]"

      assert_select "input#dis_generic_lactation_datasource_id[name=?]", "dis_generic_lactation[datasource_id]"

      assert_select "input#dis_generic_lactation_status_id[name=?]", "dis_generic_lactation[status_id]"
    end
  end
end
