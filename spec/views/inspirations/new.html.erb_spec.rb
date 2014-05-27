require 'spec_helper'

describe "inspirations/new" do
  before(:each) do
    assign(:inspiration, stub_model(Inspiration,
      :link => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new inspiration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inspirations_path, "post" do
      assert_select "input#inspiration_link[name=?]", "inspiration[link]"
      assert_select "input#inspiration_title[name=?]", "inspiration[title]"
    end
  end
end
