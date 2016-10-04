require 'rails_helper'

RSpec.describe "dis_additive_frequencies/show", type: :view do
  before(:each) do
    @dis_additive_frequency = assign(:dis_additive_frequency, DisAdditiveFrequency.create!(
      :name => "Name",
      :frequency_value => 1,
      :status_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
