require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :image => "MyString",
      :title => "MyString",
      :bible_passage => "MyText",
      :introduction => "MyText",
      :highlight => "MyText",
      :discussion => "MyText",
      :conclusion => "MyText",
      :action_steps => "MyText",
      :prayer => "MyText"
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topics_path, "post" do
      assert_select "input#topic_image[name=?]", "topic[image]"
      assert_select "input#topic_title[name=?]", "topic[title]"
      assert_select "textarea#topic_bible_passage[name=?]", "topic[bible_passage]"
      assert_select "textarea#topic_introduction[name=?]", "topic[introduction]"
      assert_select "textarea#topic_highlight[name=?]", "topic[highlight]"
      assert_select "textarea#topic_discussion[name=?]", "topic[discussion]"
      assert_select "textarea#topic_conclusion[name=?]", "topic[conclusion]"
      assert_select "textarea#topic_action_steps[name=?]", "topic[action_steps]"
      assert_select "textarea#topic_prayer[name=?]", "topic[prayer]"
    end
  end
end
