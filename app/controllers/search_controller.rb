class SearchController < ApplicationController
  def index
    YelpFacade.get_15_closest_restaurants(params[:city], params[:craving])
  end
end
