class SearchController < ApplicationController
  def index
    @restaurants = YelpService.find_business(params[:city], params[:craving])
  end
end
