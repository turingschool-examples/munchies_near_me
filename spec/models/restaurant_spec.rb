require 'rails_helper'

describe Restaurant do
  it 'exists' do
    restaurant = Restaurant.new(restaurant_data, "Wheatridge")
    expect(restaurant).to be_an_instance_of(Restaurant)
  end

  it 'attributes' do

    restaurant = Restaurant.new(restaurant_data, "Wheatridge")

    #restaurant_data is in rails_helper

    expect(restaurant.name).to eq("Pierogies Factory")
    expect(restaurant.address).to eq("3795 Wadsworth Blvd, Wheat Ridge, CO 80033")
    expect(restaurant.phone).to eq("+13034257421")
    expect(restaurant.rating).to eq(4.5)
    expect(restaurant.distance).to eq(1.13)
  end
end
