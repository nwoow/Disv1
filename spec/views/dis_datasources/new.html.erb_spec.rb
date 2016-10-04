require 'rails_helper'

RSpec.describe "dis_datasources/new", type: :view do
  before(:each) do
    assign(:dis_datasource, DisDatasource.new(
      :name => "MyString"
    ))
  end

  it "renders new dis_datasource form" do
    render

    assert_select "form[action=?][method=?]", dis_datasources_path, "post" do

      assert_select "input#dis_datasource_name[name=?]", "dis_datasource[name]"
    end
  end
end
