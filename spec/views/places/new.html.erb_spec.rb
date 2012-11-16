require 'spec_helper'

describe "places/new" do
  before(:each) do
    assign(:place, stub_model(Place,
      :name => "MyString",
      :restaurant_name => "MyString",
      :comment => "MyText",
      :address => "MyText",
      :picture => "MyString"
    ).as_new_record)
  end

  it "renders new place form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => places_path, :method => "post" do
      assert_select "input#place_name", :name => "place[name]"
      assert_select "input#place_restaurant_name", :name => "place[restaurant_name]"
      assert_select "textarea#place_comment", :name => "place[comment]"
      assert_select "textarea#place_address", :name => "place[address]"
      assert_select "input#place_picture", :name => "place[picture]"
    end
  end
end
