require 'rails_helper'

RSpec.describe 'Yelp Facade' do
  it 'returns 15 restaurants' do
    restaurants = YelpFacade.restaurants('6715 E Union Ave, Denver CO', 'Thai')
    restaurant = YelpFacade.restaurants('6715 E Union Ave, Denver CO', 'Thai').first

    expect(restaurants.count).to eq 15
    expect(restaurant).to be_a Restaurant
    expect(restaurant.name).to eq("Mali Thai Cuisine")
    expect(restaurant.display_phone).to eq("(303) 773-6254")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.display_address).to eq("4955 S Ulster St, Ste 104, Denver, CO 80237")
  end
end