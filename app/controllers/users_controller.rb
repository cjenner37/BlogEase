class UsersController < ApplicationController
  def index
  end

  def show
  	@posts = User.find(params[:id]).posts
  end
end
