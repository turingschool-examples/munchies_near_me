class SearchController < ApplicationController

  def index
    @restaurants = YelpFacade.restaurant_search(params[:city], params[:craving])
  end

end
