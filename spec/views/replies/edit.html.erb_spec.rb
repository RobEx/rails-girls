require 'spec_helper'

describe "replies/edit" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :text => ""
    ))
  end

  it "renders the edit reply form" do
    render

    assert_select "form[action=?][method=?]", reply_path(@reply), "post" do
      assert_select "input#reply_text[name=?]", "reply[text]"
    end
  end
end
