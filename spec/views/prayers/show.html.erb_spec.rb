require 'spec_helper'

describe "prayers/show" do
  before(:each) do
    @prayer = assign(:prayer, stub_model(Prayer,
      :title => "Title",
      :points => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
