require 'spec_helper'

describe IdeasController do
	describe "GET index" do
    it "assigns @ideas" do
      idea = Idea.create
      get :index
      expect(assigns(:ideas)).to eq([idea])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end