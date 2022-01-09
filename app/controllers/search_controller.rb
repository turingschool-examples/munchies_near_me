class SearchController < ApplicationController

  def index
    city = params[:city]
    craving = params[:craving]

    @restaurant_list = YelpFacade.get_search_restaurant_data(city, craving)
    #render json: restaurant_list
  end
end
