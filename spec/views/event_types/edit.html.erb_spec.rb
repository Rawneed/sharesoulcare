require 'spec_helper'

describe "event_types/edit" do
  before(:each) do
    @event_type = assign(:event_type, stub_model(EventType,
      :type => ""
    ))
  end

  it "renders the edit event_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_type_path(@event_type), "post" do
      assert_select "input#event_type_type[name=?]", "event_type[type]"
    end
  end
end
