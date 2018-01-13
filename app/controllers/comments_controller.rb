class CommentsController < ApplicationController
before_action :find_commentable

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.js
      end
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :whichpost)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end
end
