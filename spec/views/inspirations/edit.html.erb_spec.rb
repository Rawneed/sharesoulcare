require 'spec_helper'

describe "inspirations/edit" do
  before(:each) do
    @inspiration = assign(:inspiration, stub_model(Inspiration,
      :link => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit inspiration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inspiration_path(@inspiration), "post" do
      assert_select "input#inspiration_link[name=?]", "inspiration[link]"
      assert_select "input#inspiration_title[name=?]", "inspiration[title]"
    end
  end
end
