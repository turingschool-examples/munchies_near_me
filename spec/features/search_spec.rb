require 'rails_helper'

 RSpec.describe 'search', :vcr do
   it "visitor can search for 15 closest restaurants near there city that match there craving" do
     restaurants = YelpFacade.yelp_search("Denver, CO","chinese")
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

     expect(current_path).to eq(search_path)
     expect(restaurants.count).to eq(15)

     # expect(page).to have_content(restaurants[0].name)
     # expect(page).to have_content(restaurants[0].rating)
     # expect(page).to have_content(restaurants[0].phone_number)
     # expect(page).to have_content(restaurants[0].address)
     # expect(page).to have_content(restaurants[0].distance)
   end
 end
