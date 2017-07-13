class GazooiesController < ApplicationController

  def index
    @posts = Gazooy.all
  end

  def new
    @posts = Gazooy.all
    @post = Gazooy.new
  end

  def create
    @post = Gazooy.new(post_params)
    #redirect_to root_path, flash: { notice: "Gazooy crée avec succes" } if @post.save
    #redirect_to root_path if @post.save
    redirect_to :back if @post.save
  end

  private
  def post_params
    params.require(:Gazooy).permit(:text)
  end

end
