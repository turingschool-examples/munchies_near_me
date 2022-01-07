require 'rails_helper'

describe SearchFacade do
  it 'stores the restaurants as restaurant objects' do
    facade = SearchFacade.new('Reston, VA', 'Asian')
    restaurants = facade.restaurants

    expect(restaurants).to be_a Array
    expect(restaurants.length).to eq 15
    expect(restaurants.first).to be_a Restaurant
    expect(restaurants.first.name).to eq 'My Home Thai Bistro'
  end
end