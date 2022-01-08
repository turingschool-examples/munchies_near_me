class SearchController < ApplicationController
  def index
    @restaurants = SearchFacade.restaurant_results(params[:city], params[:craving])
  end
end
