require 'spec_helper'

describe "replies/index" do
  before(:each) do
    assign(:replies, [
      stub_model(Reply,
        :text => ""
      ),
      stub_model(Reply,
        :text => ""
      )
    ])
  end

  it "renders a list of replies" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
