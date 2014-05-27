require 'spec_helper'

describe "inspirations/show" do
  before(:each) do
    @inspiration = assign(:inspiration, stub_model(Inspiration,
      :link => "Link",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    rendered.should match(/Title/)
  end
end
