require 'spec_helper'

describe "discussions/new" do
  before(:each) do
    assign(:discussion, stub_model(Discussion,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new discussion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", discussions_path, "post" do
      assert_select "input#discussion_content[name=?]", "discussion[content]"
      assert_select "input#discussion_user_id[name=?]", "discussion[user_id]"
    end
  end
end
