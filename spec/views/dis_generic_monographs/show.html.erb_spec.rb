require 'rails_helper'

RSpec.describe "dis_generic_monographs/show", type: :view do
  before(:each) do
    @dis_generic_monograph = assign(:dis_generic_monograph, DisGenericMonograph.create!(
      :generic_id => 1,
      :dose => "Dose",
      :contraindication => "Contraindication",
      :precaution => "Precaution",
      :adverse_effect => "Adverse Effect",
      :storage => "Storage",
      :datasource_id => 2,
      :status_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Dose/)
    expect(rendered).to match(/Contraindication/)
    expect(rendered).to match(/Precaution/)
    expect(rendered).to match(/Adverse Effect/)
    expect(rendered).to match(/Storage/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
