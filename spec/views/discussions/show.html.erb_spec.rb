require 'spec_helper'

describe "discussions/show" do
  before(:each) do
    @discussion = assign(:discussion, stub_model(Discussion,
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
  end
end
