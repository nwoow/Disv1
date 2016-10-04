require 'rails_helper'

RSpec.describe "dis_vaccine_types/edit", type: :view do
  before(:each) do
    @dis_vaccine_type = assign(:dis_vaccine_type, DisVaccineType.create!(
      :name => "MyString",
      :description => "MyString",
      :has_packagedrug => false,
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_vaccine_type form" do
    render

    assert_select "form[action=?][method=?]", dis_vaccine_type_path(@dis_vaccine_type), "post" do

      assert_select "input#dis_vaccine_type_name[name=?]", "dis_vaccine_type[name]"

      assert_select "input#dis_vaccine_type_description[name=?]", "dis_vaccine_type[description]"

      assert_select "input#dis_vaccine_type_has_packagedrug[name=?]", "dis_vaccine_type[has_packagedrug]"

      assert_select "input#dis_vaccine_type_status_id[name=?]", "dis_vaccine_type[status_id]"

      assert_select "input#dis_vaccine_type_datasource_id[name=?]", "dis_vaccine_type[datasource_id]"
    end
  end
end
