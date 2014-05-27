require 'spec_helper'

describe "prayers/new" do
  before(:each) do
    assign(:prayer, stub_model(Prayer,
      :title => "MyString",
      :points => "MyText"
    ).as_new_record)
  end

  it "renders new prayer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prayers_path, "post" do
      assert_select "input#prayer_title[name=?]", "prayer[title]"
      assert_select "textarea#prayer_points[name=?]", "prayer[points]"
    end
  end
end
