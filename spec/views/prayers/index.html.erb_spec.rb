require 'spec_helper'

describe "prayers/index" do
  before(:each) do
    assign(:prayers, [
      stub_model(Prayer,
        :title => "Title",
        :points => "MyText"
      ),
      stub_model(Prayer,
        :title => "Title",
        :points => "MyText"
      )
    ])
  end

  it "renders a list of prayers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
