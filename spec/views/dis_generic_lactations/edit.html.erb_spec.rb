require 'rails_helper'

RSpec.describe "dis_generic_lactations/edit", type: :view do
  before(:each) do
    @dis_generic_lactation = assign(:dis_generic_lactation, DisGenericLactation.create!(
      :generic_id => 1,
      :description => "MyString",
      :datasource_id => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_generic_lactation form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_lactation_path(@dis_generic_lactation), "post" do

      assert_select "input#dis_generic_lactation_generic_id[name=?]", "dis_generic_lactation[generic_id]"

      assert_select "input#dis_generic_lactation_description[name=?]", "dis_generic_lactation[description]"

      assert_select "input#dis_generic_lactation_datasource_id[name=?]", "dis_generic_lactation[datasource_id]"

      assert_select "input#dis_generic_lactation_status_id[name=?]", "dis_generic_lactation[status_id]"
    end
  end
end
