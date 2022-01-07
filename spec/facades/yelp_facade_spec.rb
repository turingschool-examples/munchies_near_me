require 'rails_helper'

RSpec.describe 'Yelp Facade' do
  it 'returns 15 restaurants' do
    restaurants = YelpFacade.restaurants('6715 E Union Ave, Denver CO', 'Thai')
    restaurant = YelpFacade.restaurants('6715 E Union Ave, Denver CO', 'Thai').first

    expect(restaurants.count).to eq 15
    expect(restaurant).to be_a Restaurant
    expect(restaurant.name).to eq("Jing")
    expect(restaurant.display_phone).to eq("(303) 779-6888")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.display_address).to eq("5370 Greenwood Plz Blvd, Greenwood Village, CO 80111")
  end
end