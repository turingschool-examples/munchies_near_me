class SearchController < ApplicationController
  def index
    @restaurants = YelpFacade.restaurants(params[:city], params[:craving])
  end
end