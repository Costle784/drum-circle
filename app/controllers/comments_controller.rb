class CommentsController < ApplicationController
  # Removed method-name comments, redundant
  # Additionaly there was no whitespace between the method definition
  # and comment, it hard to distinguish method boundaries at a glance.

  def create
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to jampost_path(@jampost)
  end

  def edit
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.find(params[:id])
  end

  def update
    @jampost = Jampost.find(params[:jampost_id])
    @comment = @jampost.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to jampost_path(@jampost)
  end

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
