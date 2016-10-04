require 'rails_helper'

RSpec.describe "dis_manufacturers/show", type: :view do
  before(:each) do
    @dis_manufacturer = assign(:dis_manufacturer, DisManufacturer.create!(
      :id => 1,
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state_id => 2,
      :pin => "Pin",
      :phone => "Phone",
      :fax => "Fax",
      :email => "Email",
      :website => "Website",
      :mobilephoe => "Mobilephoe",
      :abbrev => "Abbrev",
      :phone2 => "Phone2",
      :release_status_id => 3,
      :status_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Pin/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Mobilephoe/)
    expect(rendered).to match(/Abbrev/)
    expect(rendered).to match(/Phone2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
