require 'rails_helper'

RSpec.describe Restaurant do
  before :each do
    @restaurant = Restaurant.new(
      name: 'Denver Pizza Co.',
      phone: '555-555-5555',
      rating: '4.9',
      display_address: ['123 Pizza Street'],
      map_distance: '0.5'
    )
  end

  it 'exists' do
    expect(@restaurant).to be_a Restaurant
  end

  it 'has attributes' do
    expect(@restaurant.name).to eq 'Denver Pizza Co.'
    expect(@restaurant.phone).to eq '555-555-5555'
    expect(@restaurant.rating).to eq '4.9'
    expect(@restaurant.address).to eq '123 Pizza Street'
    expect(@restaurant.distance).to eq '0.5'
  end
end
