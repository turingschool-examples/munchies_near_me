require "rails_helper"

RSpec.describe Restaurant do
  it "has attributes" do
    restaurant = Restaurant.new(restaurants_data_for_test[:businesses][0])

    expect(restaurant).to be_a Restaurant
    expect(restaurant.name).to eq("Denver Fresh Mex")
    expect(restaurant.phone_number).to eq("+17204209955")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.address).to eq("1600 E Colfax Ave, Denver, CO 80218")
  end
end
