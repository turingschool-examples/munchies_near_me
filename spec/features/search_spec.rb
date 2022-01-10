require 'rails_helper'

 RSpec.describe 'search' do
   it "visitor can search for 15 closest restaurants near there city that match there craving" do
     # #As a visitor
     # When I visit “/“
     # And fill in the existing form with a city (ex: “Denver, CO”) and my food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
     # I’m taken to a page where I can see a list of the 15 closest restuarants for that craving in that city.
     # And each restaurant lists their name, phone number, rating, human readable address, and the distance it is from that city.
     # And the restaurants are listed in order of proximity (closest to furthest)
     visit "/"

     fill_in :city, with: "Denver, CO"
     fill_in :craving, with: "chinese"

     click_on 'Search For Restaurants'


   end
 end
