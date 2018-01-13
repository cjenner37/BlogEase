class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
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
end
