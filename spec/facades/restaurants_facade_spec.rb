require 'rails_helper'

RSpec.describe RestaurantsFacade do
  it 'returns a list of restaurants' do
    location = 'Denver'
    query = 'pizza'
    restaurants = RestaurantsFacade.restaurants_search(location, query)

    expect(restaurants).to be_a Hash
    expect(restaurants).to have_key :businesses
    expect(restaurants[:businesses][0]).to have_key :name
    expect(restaurants[:businesses][0][:name]).to eq "Brooklyn's Finest Pizza - Lowell"
  end

  it 'returns the distance from point to point' do
    origin = 'Denver'
    destination = 'Longmont'
    distance = RestaurantsFacade.distance(origin, destination)

    expect(distance).to be_a Float
    expect(distance).to eq 37.707
  end

  it 'returns an array of restaurants sorted by distance' do
    location = 'Denver'
    query = 'pizza'
    restaurants = RestaurantsFacade.restaurant_results(location, query)

    expect(restaurants).to be_an Array
    expect(restaurants.length).to eq 15
    expect(restaurants.first).to be_a Restaurant
    expect(restaurants.first.distance).to be < restaurants.last.distance
  end
end
