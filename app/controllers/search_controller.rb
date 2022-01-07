class SearchController < ApplicationController
  def index
    @restaurants = YelpFacade.restaurants(params[:city], params[:craving])

    @restaurants.each do |restaurant|
      direction = MapquestFacade.directions(params[:city], restaurant.address)
      restaurant.set_distance(direction.distance)
    end
    @restaurants.sort_by! do |restaurant|
      restaurant.distance
    end
  end
end