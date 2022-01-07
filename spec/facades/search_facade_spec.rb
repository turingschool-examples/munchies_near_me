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

    # restuarant = SearchFacade.restaurant(location, category)
    # expect(restuarant).to be_a Restaurant
  end
end
