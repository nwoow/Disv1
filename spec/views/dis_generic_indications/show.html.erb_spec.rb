require 'rails_helper'

RSpec.describe "dis_generic_indications/show", type: :view do
  before(:each) do
    @dis_generic_indication = assign(:dis_generic_indication, DisGenericIndication.create!(
      :id => 1,
      :generic_id => 2,
      :status_id => 3,
      :indication_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
