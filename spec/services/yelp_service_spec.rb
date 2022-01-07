# As a visitor
# When I visit “/“
# And fill in the existing form with a city (ex: “Denver, CO”)
# and my food craving (ex: thai, american, bar, chinese, etc.) and hit submit,
# I’m taken to a page where I can see a list of the 15 closest restuarants
# for that craving in that city.
# And each restaurant lists their name, phone number, rating, human readable address,
# and the distance it is from that city.
# And the restaurants are listed in order of proximity (closest to furthest)
require 'rails_helper'
# ber spec/services/yelp_service_spec.rb
RSpec.describe 'Yelp business search API' do
  it 'returns businesses' do
    location = "denver, co"
    category = "thai"
    response = YelpService.business_search(location, category)

    expect(response).to be_a Hash

    expect(response).to have_key :businesses
    expect(response[:businesses].count).to eq(15)
    expect(response[:businesses]).to be_an Array
    expect(response[:businesses][0]).to have_key :name
    expect(response[:businesses][0]).to have_key :display_phone
    expect(response[:businesses][0]).to have_key :rating
    expect(response[:businesses][0]).to have_key :location
    expect(response[:businesses][0][:location]).to have_key :display_address
  end
end
