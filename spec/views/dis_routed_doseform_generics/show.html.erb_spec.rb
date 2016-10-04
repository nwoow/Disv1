require 'rails_helper'

RSpec.describe "dis_routed_doseform_generics/show", type: :view do
  before(:each) do
    @dis_routed_doseform_generic = assign(:dis_routed_doseform_generic, DisRoutedDoseformGeneric.create!(
      :generic_id => 1,
      :rtd_gen_id => 2,
      :route_id => 3,
      :doseform_id => 4,
      :name => "Name",
      :monograph_id => 5,
      :status_id => 6,
      :release_status_id => 7,
      :is_combination => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
  end
end
