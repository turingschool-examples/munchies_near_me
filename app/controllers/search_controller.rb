class SearchController < ApplicationController
  def index
    @results = SearchFacade.search_results(params[:city], params[:craving])
  end
end
