class SearchController < ApplicationController
  def index
    @restaurants = SearchFacade.restaurants(params[:city], params[:craving])
  end
end
