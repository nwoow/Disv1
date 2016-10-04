require 'rails_helper'

RSpec.describe "dis_generic_hepatic_imps/show", type: :view do
  before(:each) do
    @dis_generic_hepatic_imp = assign(:dis_generic_hepatic_imp, DisGenericHepaticImp.create!(
      :generic_id => 1,
      :warning => "Warning",
      :description => "Description",
      :status_id => 2,
      :datasource_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Warning/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
