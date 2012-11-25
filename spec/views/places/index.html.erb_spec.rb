require 'spec_helper'

describe "places/index" do
  before(:each) do
    assign(:places, [
      stub_model(Place,
        :name => "Name",
        :address => "Address"
      ),
      stub_model(Place,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of places" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
