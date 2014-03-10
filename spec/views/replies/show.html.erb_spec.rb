require 'spec_helper'

describe "replies/show" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :text => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
