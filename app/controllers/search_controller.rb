class SearchController < ApplicationController
  def index
    @city = params[:city]
    @restaurants = YelpFacade.get_15_closest_restaurants(params[:city], params[:craving])
  end
end
