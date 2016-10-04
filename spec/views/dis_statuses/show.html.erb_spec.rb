require 'rails_helper'

RSpec.describe "dis_statuses/show", type: :view do
  before(:each) do
    @dis_status = assign(:dis_status, DisStatus.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
