class HomeController < ApplicationController

  def index
    @posts = Gazooy.all
  end

  def gazooies
    @posts = Gazooy.all
  end

end
