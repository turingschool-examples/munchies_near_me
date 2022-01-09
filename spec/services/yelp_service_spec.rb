require 'rails_helper'

RSpec.describe YelpService do
  it 'can get restaurant data' do
    city = "Denver, CO"
    craving = "coffee"

    result = YelpService.get_search_restaurant_data(city, craving)

    first_result = result.first[1][0]

    expect(first_result). to have_key :name
    expect(first_result[:name]).to be_a String
    expect(first_result). to have_key :rating
    expect(first_result[:rating]).to be_a Float
    expect(first_result). to have_key :location
    expect(first_result[:location]).to be_a Hash
    expect(first_result). to have_key :phone
    expect(first_result[:name]).to be_a String
  end

end
