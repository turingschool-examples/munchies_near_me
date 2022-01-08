require 'rails_helper'

RSpec.describe SearchFacade do
  it 'sorts restaurants by distance from location1' do
    location1 = 'Denver, CO'
    term = 'Japanese'

    result = SearchFacade.restaurant_results(location1, term)

    expect(result.count).to eq(15)
    expect(result.first.distance).to eq(0.563)
    expect(result.last.distance).to eq(4.974)
  end
end
