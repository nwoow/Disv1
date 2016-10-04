require 'rails_helper'

RSpec.describe "dis_datasources/edit", type: :view do
  before(:each) do
    @dis_datasource = assign(:dis_datasource, DisDatasource.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit dis_datasource form" do
    render

    assert_select "form[action=?][method=?]", dis_datasource_path(@dis_datasource), "post" do

      assert_select "input#dis_datasource_name[name=?]", "dis_datasource[name]"
    end
  end
end
