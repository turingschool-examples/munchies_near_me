require 'rails_helper'

describe Restaurant do
  before :each do
    @restaurant = Restaurant.new({
      name: "bob's burgers",
      display_phone: '123-456-7890',
      rating: 5,
      location: {display_address: ['1', '2', '3']},
      distance: 5000
     })
  end

  it 'creates a restaurant instance' do
    expect(@restaurant).to be_a Restaurant

    expect(@restaurant.name).to eq "bob's burgers"
    expect(@restaurant.phone).to eq '123-456-7890'
    expect(@restaurant.rating).to eq 5
  end

  it 'converts distance in meters to miles' do
    expect(@restaurant.miles_away).to eq 3.11
  end

  it 'concatenates the address' do
    expect(@restaurant.address).to eq '1 2 3 '
  end
end