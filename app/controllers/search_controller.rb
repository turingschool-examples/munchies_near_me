class SearchController < ApplicationController
  def index
    @facade = SearchFacade.new(params[:city], params[:craving])
  end
end