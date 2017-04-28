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
  #edit
  def edit
    @jampost = Jampost.find(params[:id])
  end
  #update
  def update
    @jampost = Jampost.find(params[:id])
    @jampost.update(jampost_params)

    redirect_to jampost_path(@jampost)
  end

  def destroy
    @jampost = Jampost.find(params[:id])
    @jampost.destroy

    redirect_to jamposts_path
  end

  private
  def jampost_params
    params.require(:jampost).permit(:title, :img_url, :location, :body)
  end
end
