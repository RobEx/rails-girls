class CensorshipController < ApplicationController

  # GET /comments
  # GET /comments.json
  def index
    @censorship = Censorship.all
  end

end
