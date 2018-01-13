class SearchController < ApplicationController
  def index
  	respond_to do |format|
  		@results = User.where('first_name LIKE ?', "%#{params[:name]}%")
  		format.js
  	end
  end
end
