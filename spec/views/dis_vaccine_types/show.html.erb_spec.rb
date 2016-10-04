require 'rails_helper'

RSpec.describe "dis_vaccine_types/show", type: :view do
  before(:each) do
    @dis_vaccine_type = assign(:dis_vaccine_type, DisVaccineType.create!(
      :name => "Name",
      :description => "Description",
      :has_packagedrug => false,
      :status_id => 1,
      :datasource_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
