require 'rails_helper'

RSpec.describe "dis_additive_frequencies/edit", type: :view do
  before(:each) do
    @dis_additive_frequency = assign(:dis_additive_frequency, DisAdditiveFrequency.create!(
      :name => "MyString",
      :frequency_value => 1,
      :status_id => 1
    ))
  end

  it "renders the edit dis_additive_frequency form" do
    render

    assert_select "form[action=?][method=?]", dis_additive_frequency_path(@dis_additive_frequency), "post" do

      assert_select "input#dis_additive_frequency_name[name=?]", "dis_additive_frequency[name]"

      assert_select "input#dis_additive_frequency_frequency_value[name=?]", "dis_additive_frequency[frequency_value]"

      assert_select "input#dis_additive_frequency_status_id[name=?]", "dis_additive_frequency[status_id]"
    end
  end
end
