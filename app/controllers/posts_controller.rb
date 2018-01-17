class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post
    else
      flash[:notice] = "Post save was unsuccessful. Make sure both title and content have some content."
    end
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
