require 'rails_helper'

RSpec.describe "dis_dispensable_generics/show", type: :view do
  before(:each) do
    @dis_dispensable_generic = assign(:dis_dispensable_generic, DisDispensableGeneric.create!(
      :routed_doseform_generic_id => "",
      :strength => "Strength",
      :strength_doseunit_id => 1,
      :per_strength => "Per Strength",
      :per_doseunit_id => 2,
      :name => "Name",
      :release_status_id => 3,
      :status_id => 4,
      :datasource_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Strength/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Per Strength/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
