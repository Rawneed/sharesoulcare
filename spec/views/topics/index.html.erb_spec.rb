require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :image => "Image",
        :title => "Title",
        :bible_passage => "MyText",
        :introduction => "MyText",
        :highlight => "MyText",
        :discussion => "MyText",
        :conclusion => "MyText",
        :action_steps => "MyText",
        :prayer => "MyText"
      ),
      stub_model(Topic,
        :image => "Image",
        :title => "Title",
        :bible_passage => "MyText",
        :introduction => "MyText",
        :highlight => "MyText",
        :discussion => "MyText",
        :conclusion => "MyText",
        :action_steps => "MyText",
        :prayer => "MyText"
      )
    ])
  end

  it "renders a list of topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
