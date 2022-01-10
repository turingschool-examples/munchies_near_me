require 'rails_helper'

describe YelpFacade do
  it 'stores the restaurants as restaurant objects' do
    location = 'Denver'
    craving = 'pizza'
    restaurants = YelpFacade.restaurants(location, craving)

    expect(restaurants).to be_a Array
    expect(restaurants.length).to eq 15
    expect(restaurants.first).to be_a Restaurant
    expect(restaurants.first.name).to eq "Osteria Marco"
  end

  it 'returns distance' do
    origin = 'Denver'
    destination = '2920 Tennyson st, Denver'

    expect(YelpFacade.distance(origin, destination)).to eq(4.05)
  end
end