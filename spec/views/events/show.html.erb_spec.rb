require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :image => "Image",
      :title => "Title",
      :location => "Location",
      :cost => "Cost",
      :event_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image/)
    rendered.should match(/Title/)
    rendered.should match(/Location/)
    rendered.should match(/Cost/)
    rendered.should match(/1/)
  end
end
