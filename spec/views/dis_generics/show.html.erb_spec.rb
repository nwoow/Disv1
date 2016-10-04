require 'rails_helper'

RSpec.describe "dis_generics/show", type: :view do
  before(:each) do
    @dis_generic = assign(:dis_generic, DisGeneric.create!(
      :name => "Name",
      :is_combination => false,
      :rxcui => 1,
      :status_id => 2,
      :food_id => 3,
      :hepatic_id => 4,
      :renal_imp_id => 5,
      :release_status_id => 6,
      :is_essential => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
  end
end
