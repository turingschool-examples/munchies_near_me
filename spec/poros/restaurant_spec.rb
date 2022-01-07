require 'rails_helper'

RSpec.describe Restaurant do
  let(:restaurant) { Restaurant.new(restaurant_data) }

  it 'has attributes' do

    expect(restaurant.name).to eq("Denver Fresh Mex")
    expect(restaurant.rating).to eq(4.0)
    expect(restaurant.phone_number).to eq("(720) 420-9955")
    expect(restaurant.address).to eq("1600 E Colfax Ave, Denver, CO 80218")
  end
end