require 'rails_helper'

RSpec.describe RestaurantsService do
  it 'creates a faraday connection' do
    expect(RestaurantsService.conn).to be_a Faraday::Connection
  end

  it 'connects to the yelp api' do
    location = 'Denver'
    term = 'pizza'
    results = RestaurantsService.restaurants_search(location, term)

    expect(results).to be_a Hash
    expect(results).to have_key :businesses
    expect(results[:businesses][0]).to have_key :name
    expect(results[:businesses][0][:name]).to eq "Brooklyn's Finest Pizza - Lowell"
  end
end
