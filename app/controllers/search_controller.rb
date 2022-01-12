class SearchController < ApplicationController
  def index
    @restaurants = YelpFacade.yelp_search(params[:city], params[:craving])
  end
end
