class SearchController < ApplicationController

  def index
    if !params[:city].nil? && !params[:city].nil?
      @restaraunts = RestarauntService.find(params[:craving], params[:city])
    end
  end
end
