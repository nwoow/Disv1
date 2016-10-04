require 'rails_helper'

RSpec.describe "dis_routed_generics/show", type: :view do
  before(:each) do
    @dis_routed_generic = assign(:dis_routed_generic, DisRoutedGeneric.create!(
      :id => 1,
      :name => "Name",
      :generic_id => 2,
      :route_id => 3,
      :is_combination => false,
      :pregnancy_category_id => 4,
      :release_status_id => 5,
      :status_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
