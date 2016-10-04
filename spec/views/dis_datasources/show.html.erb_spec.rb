require 'rails_helper'

RSpec.describe "dis_datasources/show", type: :view do
  before(:each) do
    @dis_datasource = assign(:dis_datasource, DisDatasource.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
