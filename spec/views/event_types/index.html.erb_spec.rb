require 'spec_helper'

describe "event_types/index" do
  before(:each) do
    assign(:event_types, [
      stub_model(EventType,
        :type => "Type"
      ),
      stub_model(EventType,
        :type => "Type"
      )
    ])
  end

  it "renders a list of event_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
