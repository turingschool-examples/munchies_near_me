require 'rails_helper'

RSpec.describe Restaurant do
  xit 'has attributes of a restaurant' do
    business = {
      name: "House Rock Kitchen",
      phone_number: "+17204566648",
      rating: 4.5,
      address: "215 East Main Street, Buena Vista, CO",
      distance: 4.56
    }
    distance = 4.56
    restaurant = Restaurant.new(business, distance)
    expect(restaurant.name).to eq("House Rock Kitchen")
    expect(restaurant.phone_number).to eq("+17204566648")
    expect(restaurant.rating).to eq(4.5)
    expect(restaurant.address).to eq("215 East Main Street, Buena Vista, CO")
    expect(restaurant.distance).to eq(4.56)
  end
end
