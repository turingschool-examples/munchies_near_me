class SearchController < ApplicationController
  def index
    rest_facade = CravingFacade.restaurants(params[:city], params[:craving])
    @restaurants = rest_facade.sort_by { |restaurant| restaurant.distance }
  end
end
