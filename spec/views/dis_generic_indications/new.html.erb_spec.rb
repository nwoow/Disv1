require 'rails_helper'

RSpec.describe "dis_generic_indications/new", type: :view do
  before(:each) do
    assign(:dis_generic_indication, DisGenericIndication.new(
      :id => 1,
      :generic_id => 1,
      :status_id => 1,
      :indication_id => 1
    ))
  end

  it "renders new dis_generic_indication form" do
    render

    assert_select "form[action=?][method=?]", dis_generic_indications_path, "post" do

      assert_select "input#dis_generic_indication_id[name=?]", "dis_generic_indication[id]"

      assert_select "input#dis_generic_indication_generic_id[name=?]", "dis_generic_indication[generic_id]"

      assert_select "input#dis_generic_indication_status_id[name=?]", "dis_generic_indication[status_id]"

      assert_select "input#dis_generic_indication_indication_id[name=?]", "dis_generic_indication[indication_id]"
    end
  end
end
