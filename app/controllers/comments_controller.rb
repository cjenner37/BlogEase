class CommentsController < ApplicationController
before_action :find_commentable

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.create(content: params[:comment][:content], user_id: current_user.id)
    redirect_to post_path(params[:comment][:whichpost])
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