# As a visitor
# When I visit “/“
# And fill in the existing form with a city (ex: “Denver, CO”) and my food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
# I’m taken to a page where I can see a list of the 15 closest restuarants for that craving in that city.
# And each restaurant lists their name, phone number, rating, human readable address, and the distance it is from that city.
# And the restaurants are listed in order of proximity (closest to furthest)

require 'rails_helper'

RSpec.describe 'Search Results Page' do
  before :each do
    @restaurants = CravingFacade.restaurants("Las Vegas", "fries")
    @first_restaurant = @restaurants.first
    visit '/'
    fill_in :city, with: 'Las Vegas'
    fill_in :craving, with: 'fries'
    click_button 'Search For Restaurants'
  end

  it 'lists the restaurants that fit the craving' do
    expect(page).to have_content("Restaurants Near You with #{@first_restaurant.craving}!")
    expect(page).to have_content("Name: #{@first_restaurant.name}")
    expect(page).to have_content("Yelp Rating: #{@first_restaurant.rating}")
    expect(page).to have_content("Name: #{@restaurants.second.name}")
  end
end
