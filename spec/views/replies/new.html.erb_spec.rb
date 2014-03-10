require 'spec_helper'

describe "replies/new" do
  before(:each) do
    assign(:reply, stub_model(Reply,
      :text => ""
    ).as_new_record)
  end

  it "renders new reply form" do
    render

    assert_select "form[action=?][method=?]", replies_path, "post" do
      assert_select "input#reply_text[name=?]", "reply[text]"
    end
  end
end
