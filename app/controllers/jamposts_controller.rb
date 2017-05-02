class JampostsController < ApplicationController

  #index
  def index
    @jamposts = Jampost.all
  end
  #new
  def new
    @jampost = Jampost.new
    if (params[:drumcircle])
      @jampost.is_drumcircle = true
    end
  end
  #create
  def create
    @jampost = current_user.jamposts.new(jampost_params)
    if @jampost.save
      redirect_to jampost_path(@jampost), notice: "Post Added!"
    else
      render :new
    end

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
    if @jampost.user == current_user
      @jampost.destroy
    else
      flash[:alert] = "Only the author of the post can delete"
    end
    redirect_to jamposts_path
  end

  private
  def jampost_params
    params.require(:jampost).permit(:title, :img_url, :location, :body, :is_drumcircle,:size_limit,:skill_level,:time)
  end
end
