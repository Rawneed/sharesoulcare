require 'spec_helper'

describe "inspirations/index" do
  before(:each) do
    assign(:inspirations, [
      stub_model(Inspiration,
        :link => "Link",
        :title => "Title"
      ),
      stub_model(Inspiration,
        :link => "Link",
        :title => "Title"
      )
    ])
  end

  it "renders a list of inspirations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
