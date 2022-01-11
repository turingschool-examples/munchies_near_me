require 'rails_helper'
# ber spec/facades/search_facade_spec.rb
RSpec.describe 'Search Facade' do

  it 'returns data on businesses based on location and category' do
    location = "denver, co"
    category = "thai"

    restuarants = SearchFacade.find_locations(location, category)

    expect(restuarants.count).to eq(15)
    expect(restuarants).to be_an(Array)

    expect(restuarants[0]).to have_key :name
    expect(restuarants[0][:name]).to be_a String

    expect(restuarants[0]).to have_key :rating
    expect(restuarants[0][:rating]).to be_a Float

    expect(restuarants[0]).to have_key :location
    expect(restuarants[0][:location]).to be_a Hash

    expect(restuarants[0][:location]).to have_key :display_address
    expect(restuarants[0][:location][:display_address]).to be_an Array

    expect(restuarants[0]).to have_key :display_phone
    expect(restuarants[0][:display_phone]).to be_a String
  end

  it 'returns a restaurant object' do
    location = "denver, co"
    category = "thai"

    restaurant = SearchFacade.restaurants(location, category)

    expect(restaurant.first).to be_a Restaurant
  end

  it 'returns restaurants closest to farthest' do
    location = "denver, co"
    category = "thai"

    restaurant = SearchFacade.restaurants(location, category)

    first = restaurant.first.distance
    last = restaurant.last.distance

    expected = first <= last

    expect(expected).to be true
  end

  it 'returns a hash' do
    location = "denver, co"
    category = "thai"

    all_restaurants = SearchFacade.find_restaurants_via_yelp_mq(location, category)

    expect(all_restaurants).to be_an Array
    expect(all_restaurants.first).to be_a Hash

    expect(all_restaurants.first).to have_key :name
    expect(all_restaurants.first[:name]).to be_a String

    expect(all_restaurants.first).to have_key :rating
    expect(all_restaurants.first[:rating]).to be_a Float

    expect(all_restaurants.first).to have_key :display_phone
    expect(all_restaurants.first[:display_phone]).to be_a String

    expect(all_restaurants.first).to have_key :display_address
    expect(all_restaurants.first[:display_address]).to be_an Array

    expect(all_restaurants.first).to have_key :mq_distance
    expect(all_restaurants.first[:mq_distance]).to be_a Float
  end
end
