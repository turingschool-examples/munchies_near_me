class SearchController < ApplicationController
  def index
    @restaurants = RestaurantsFacade.restaurant_results(params[:city], params[:craving])
  end
end
