require 'rails_helper'

RSpec.describe "dis_manufacturers/index", type: :view do
  before(:each) do
    assign(:dis_manufacturers, [
      DisManufacturer.create!(
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
      ),
      DisManufacturer.create!(
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
      )
    ])
  end

  it "renders a list of dis_manufacturers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Pin".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Mobilephoe".to_s, :count => 2
    assert_select "tr>td", :text => "Abbrev".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
