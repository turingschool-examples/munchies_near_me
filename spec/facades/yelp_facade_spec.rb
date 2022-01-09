require 'rails_helper'

RSpec.describe YelpFacade do
  it 'can get restaurant data' do
    city = "Denver, CO"
    craving = "coffee"

    data = YelpFacade.get_search_restaurant_data(city, craving)

    result = data.first
    expect(result). to be_a Restaurant
    expect(result.name).to eq("Thump Coffee")
    expect(result.phone_number).to eq("+17204566648")
    expect(result.distance).to eq(0.752)
    expect(result.address).to eq(["1201 E 13th Ave", "Denver, CO 80218"])
    expect(result.rating).to eq(4.0)
  end
end
