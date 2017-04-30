class CommentsController < ApplicationController
  #create
  def create
    puts "CREATE COMMENT"
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.create!(comment_params)
    redirect_to jampost_path(@jampost)
  end
  #edit
  def edit
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.find(params[:id])
  end
  #update
  def update
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to jampost_path(@jampost)
  end
  #destroy
  def destroy
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.find(params[:id])
    @comment.destroy
    redirect_to jampost_path(@jampost)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
