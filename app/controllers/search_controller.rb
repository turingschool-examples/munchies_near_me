class SearchController < ApplicationController 
    def index 
      @restaurants = YelpFacade.restaurants((params[:city]), params[:craving])
      require 'pry'; binding.pry
    end 
end 