require 'rails_helper'

RSpec.describe "dis_generic_hepatic_imps/edit", type: :view do
  before(:each) do
    @dis_generic_hepatic_imp = assign(:dis_generic_hepatic_imp, DisGenericHepaticImp.create!(
      :generic_id => 1,
      :warning => "MyString",
      :description => "MyString",
      :status_id => 1,
      :datasource_id => 1
    ))
  end

  it "renders the edit dis_generic_hepatic_imp form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_hepatic_imp_path(@dis_generic_hepatic_imp), "post" do

      assert_select "input#dis_generic_hepatic_imp_generic_id[name=?]", "dis_generic_hepatic_imp[generic_id]"

      assert_select "input#dis_generic_hepatic_imp_warning[name=?]", "dis_generic_hepatic_imp[warning]"

      assert_select "input#dis_generic_hepatic_imp_description[name=?]", "dis_generic_hepatic_imp[description]"

      assert_select "input#dis_generic_hepatic_imp_status_id[name=?]", "dis_generic_hepatic_imp[status_id]"

      assert_select "input#dis_generic_hepatic_imp_datasource_id[name=?]", "dis_generic_hepatic_imp[datasource_id]"
    end
  end
end
