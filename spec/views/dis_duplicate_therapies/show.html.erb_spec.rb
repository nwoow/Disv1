require 'rails_helper'

RSpec.describe "dis_duplicate_therapies/show", type: :view do
  before(:each) do
    @dis_duplicate_therapy = assign(:dis_duplicate_therapy, DisDuplicateTherapy.create!(
      :generic_id1 => 1,
      :generic_id2 => 2,
      :status_id => 3,
      :datasource_id => 4
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
