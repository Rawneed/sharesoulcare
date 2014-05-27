require 'spec_helper'

describe "event_types/new" do
  before(:each) do
    assign(:event_type, stub_model(EventType,
      :type => ""
    ).as_new_record)
  end

  it "renders new event_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_types_path, "post" do
      assert_select "input#event_type_type[name=?]", "event_type[type]"
    end
  end
end
