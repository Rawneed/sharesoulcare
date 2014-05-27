require 'spec_helper'

describe "prayers/edit" do
  before(:each) do
    @prayer = assign(:prayer, stub_model(Prayer,
      :title => "MyString",
      :points => "MyText"
    ))
  end

  it "renders the edit prayer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", prayer_path(@prayer), "post" do
      assert_select "input#prayer_title[name=?]", "prayer[title]"
      assert_select "textarea#prayer_points[name=?]", "prayer[points]"
    end
  end
end
