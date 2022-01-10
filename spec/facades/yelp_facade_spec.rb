require 'rails_helper'

RSpec.describe 'yelp facade' do

  it 'can return fifteen restaurants' do
    restaurants = YelpFacade.restaurant_search('denver', 'thai')

    expect(restaurants.count).to eq(15)
    expect(restaurants.first).to be_a(Restaurant)
  end
end
