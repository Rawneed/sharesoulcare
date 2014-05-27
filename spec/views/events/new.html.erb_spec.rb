require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :image => "MyString",
      :title => "MyString",
      :location => "MyString",
      :cost => "MyString",
      :event_type_id => 1
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_image[name=?]", "event[image]"
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "input#event_location[name=?]", "event[location]"
      assert_select "input#event_cost[name=?]", "event[cost]"
      assert_select "input#event_event_type_id[name=?]", "event[event_type_id]"
    end
  end
end
