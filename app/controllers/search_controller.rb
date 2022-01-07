class SearchController < ApplicationController
  def index
    @restaurants = CravingFacade.restaurants(params[:city], params[:craving])
  end
end
