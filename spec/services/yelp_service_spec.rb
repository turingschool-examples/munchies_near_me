require 'rails_helper'

RSpec.describe 'Nearest restaurants search' do
  it 'can get the nearest restaurants', :vcr do
    response = YelpService.restaurants("Denver, CO", "Mexican")

    expect(response).to be_a Hash
    expect(response[:businesses]).to be_an Array

    first_restaurant_data = response[:businesses][0]

    expect(first_restaurant_data).to have_key :name
    expect(first_restaurant_data[:name]).to be_a String

    expect(first_restaurant_data).to have_key :rating
    expect(first_restaurant_data[:rating]).to be_a Float

    expect(first_restaurant_data).to have_key :phone
    expect(first_restaurant_data[:phone]).to be_a String

    expect(first_restaurant_data).to have_key :location
    expect(first_restaurant_data[:location]).to be_a Hash

    expect(first_restaurant_data[:location]).to have_key :display_address
    expect(first_restaurant_data[:location][:display_address]).to be_a Array
  end
end