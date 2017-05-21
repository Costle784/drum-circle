class JampostsController < ApplicationController
  # Removed method-name comments, redundant
  # Additionaly there was no whitespace between the method definition
  # and comment, it hard to distinguish method boundaries at a glance.

  def index
    @jamposts = Jampost.all
  end

  def new
    @jampost = Jampost.new
    if (params[:drumcircle])
      @jampost.is_drumcircle = true
    end
  end

  def create
    @jampost = current_user.jamposts.new(jampost_params)
    if @jampost.save
      redirect_to jampost_path(@jampost), notice: "Post Added!"
    else
      render :new
    end
  end

  # edited to prevent showing sign-up buttons when user alrady chose an instrument
  def show
    @jampost = Jampost.find(params[:id])
    user_pledged_instruments = @jampost.instruments.select{|i|
        i.user == current_user
    }
    @already_chose_an_instrument = user_pledged_instruments.length > 0
    @comment = Comment.new
    @instrument = Instrument.new
  end

  def edit
    @jampost = Jampost.find(params[:id])
  end

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
    params.require(:jampost).permit(:title, :img_url, :location, :body, :is_drumcircle,:size_limit,:skill_level,:time, :current_members)
  end
end
