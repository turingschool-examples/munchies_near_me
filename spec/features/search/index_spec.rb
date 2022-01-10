require 'rails_helper'
# ber spec/features/search/index_spec.rb
RSpec.describe 'Restaurant Search' do
  before :each do
    visit "/"
    fill_in :city, with: "denver, co"
    fill_in :craving, with: "thai"
    click_on "Search For Restaurants"
  end

  it 'redirects to results page' do
    require "pry"; binding.pry
    expect(current_path).to eq(search_path)
    expect(page).to have_content("Results from your search will appear below!")
  end

  it 'lists 15 thai restaurants in order from closest to farthest from inputted city' do
    # expect(page).to have_content("")
  end
end
# As a visitor
# When I visit “/“
# And fill in the existing form with a city (ex: “Denver, CO”)
# and my food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
# I’m taken to a page where I can see a list of the 15 closest restuarants
# for that craving in that city.
# And each restaurant lists their name, phone number, rating, human readable address,
# and the distance it is from that city.
# And the restaurants are listed in order of proximity (closest to furthest)
