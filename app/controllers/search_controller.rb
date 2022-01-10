class SearchController < ApplicationController 
  def index
    @restaurants = YelpFacade.get_restaurants(params['city'], params['craving']) 
    @results = MapFacade.get_distance(@restaurants, params['city'])
  end 
end 