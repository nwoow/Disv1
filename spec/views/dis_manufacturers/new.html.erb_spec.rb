require 'rails_helper'

RSpec.describe "dis_manufacturers/new", type: :view do
  before(:each) do
    assign(:dis_manufacturer, DisManufacturer.new(
      :id => 1,
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state_id => 1,
      :pin => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyString",
      :mobilephoe => "MyString",
      :abbrev => "MyString",
      :phone2 => "MyString",
      :release_status_id => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_manufacturer form" do
    render

    assert_select "form[action=?][method=?]", dis_manufacturers_path, "post" do

      assert_select "input#dis_manufacturer_id[name=?]", "dis_manufacturer[id]"

      assert_select "input#dis_manufacturer_name[name=?]", "dis_manufacturer[name]"

      assert_select "input#dis_manufacturer_address1[name=?]", "dis_manufacturer[address1]"

      assert_select "input#dis_manufacturer_address2[name=?]", "dis_manufacturer[address2]"

      assert_select "input#dis_manufacturer_city[name=?]", "dis_manufacturer[city]"

      assert_select "input#dis_manufacturer_state_id[name=?]", "dis_manufacturer[state_id]"

      assert_select "input#dis_manufacturer_pin[name=?]", "dis_manufacturer[pin]"

      assert_select "input#dis_manufacturer_phone[name=?]", "dis_manufacturer[phone]"

      assert_select "input#dis_manufacturer_fax[name=?]", "dis_manufacturer[fax]"

      assert_select "input#dis_manufacturer_email[name=?]", "dis_manufacturer[email]"

      assert_select "input#dis_manufacturer_website[name=?]", "dis_manufacturer[website]"

      assert_select "input#dis_manufacturer_mobilephoe[name=?]", "dis_manufacturer[mobilephoe]"

      assert_select "input#dis_manufacturer_abbrev[name=?]", "dis_manufacturer[abbrev]"

      assert_select "input#dis_manufacturer_phone2[name=?]", "dis_manufacturer[phone2]"

      assert_select "input#dis_manufacturer_release_status_id[name=?]", "dis_manufacturer[release_status_id]"

      assert_select "input#dis_manufacturer_status_id[name=?]", "dis_manufacturer[status_id]"
    end
  end
end
