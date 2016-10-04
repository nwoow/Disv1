require 'rails_helper'

RSpec.describe "dis_vaccine_types/index", type: :view do
  before(:each) do
    assign(:dis_vaccine_types, [
      DisVaccineType.create!(
        :name => "Name",
        :description => "Description",
        :has_packagedrug => false,
        :status_id => 1,
        :datasource_id => 2
      ),
      DisVaccineType.create!(
        :name => "Name",
        :description => "Description",
        :has_packagedrug => false,
        :status_id => 1,
        :datasource_id => 2
      )
    ])
  end

  it "renders a list of dis_vaccine_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
