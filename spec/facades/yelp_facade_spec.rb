require 'rails_helper'

RSpec.describe 'Yelp Facade' do
  it '.restaurants', :vcr do
    restaurants = YelpFacade.restaurants("Denver, CO", "Italian")
    
    expect(restaurants).to be_an Array
    restaurants.each do |restaurant|
      expect(restaurant).to be_a Restaurant
    end
  end
end