require 'rails_helper'

RSpec.describe CravingFacade do
  it 'can return restaurant poros' do
    restaurants = CravingFacade.restaurants("las vegas", "fries")

    expect(restaurants.first).to be_a(Restaurant)
  end
end
