require 'rails_helper'

RSpec.describe "dis_additive_frequencies/new", type: :view do
  before(:each) do
    assign(:dis_additive_frequency, DisAdditiveFrequency.new(
      :name => "MyString",
      :frequency_value => 1,
      :status_id => 1
    ))
  end

  it "renders new dis_additive_frequency form" do
    render

    assert_select "form[action=?][method=?]", dis_additive_frequencies_path, "post" do

      assert_select "input#dis_additive_frequency_name[name=?]", "dis_additive_frequency[name]"

      assert_select "input#dis_additive_frequency_frequency_value[name=?]", "dis_additive_frequency[frequency_value]"

      assert_select "input#dis_additive_frequency_status_id[name=?]", "dis_additive_frequency[status_id]"
    end
  end
end
