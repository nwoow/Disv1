require 'rails_helper'

RSpec.describe "dis_doseform_doseunit_links/show", type: :view do
  before(:each) do
    @dis_doseform_doseunit_link = assign(:dis_doseform_doseunit_link, DisDoseformDoseunitLink.create!(
      :doseform_id => 1,
      :doseunit_id => 2,
      :is_default => false,
      :status_id => 3,
      :datasource_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
