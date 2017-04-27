class JampostsController < ApplicationController

  #index
  def index
    @jamposts = Jampost.all
  end
  #new
  def new
    @jampost = Jampost.new
  end
  #create
  def create
    @jampost = Jampost.create(jampost_params)
    redirect_to jampost_path(@jampost), notice: "Post Added!"
  end
  #show
  def show
    @jampost = Jampost.find(params[:id])
    @comment = Comment.new
  end
end
